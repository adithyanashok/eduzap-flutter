import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/user/i_user_facade.dart';
import 'package:eduzap/domain/user/model/user_model.dart';
import 'package:eduzap/infrastructure/core/collections.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserFacade)
class UserRepositary extends IUserFacade {
  @override
  Future<Either<MainFailures, UserModel>> getCurrentUser() async {
    try {
      String userId = FirebaseAuth.instance.currentUser!.uid;
      final db = FirebaseFirestore.instance;
      final docRef = await db.collection(Collection.users).doc(userId).get();
      final user = UserModel.fromJson(docRef.data()!);
      if (user.admin == false) {
        if (user.nextSubDate!.isBefore(DateTime.now())) {
          await db.collection(Collection.users).doc(userId).update({
            "subscriber": false,
          });
        }
      }
      return Right(user);
    } catch (e) {
      log(e.toString());
      return Left(MainFailures.failures(error: e.toString()));
    }
  }

  @override
  Future<Either<MainFailures, UserModel>> updateSubscription() async {
    try {
      final db = FirebaseFirestore.instance;
      final userId = FirebaseAuth.instance.currentUser?.uid;

      final currentSubDate = DateTime.now();
      final nextSubDate = currentSubDate.add(const Duration(days: 30));

      await db.collection(Collection.users).doc(userId).update({
        "subscriber": true,
        "currentSubDate": currentSubDate.toString(),
        "nextSubDate": nextSubDate.toString(),
      });

      final docSnap = await db.collection(Collection.users).doc(userId).get();
      final user = UserModel.fromJson(docSnap.data()!);

      return Right(user);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }

  @override
  Future<Either<MainFailures, List<UserModel>>> getAllStudents() async {
    try {
      final db = FirebaseFirestore.instance;

      final querySnap = await db
          .collection(Collection.users)
          .where('admin', isEqualTo: false)
          .get();

      final studentsList = querySnap.docs.map((e) {
        return UserModel.fromJson(e.data());
      }).toList();

      return Right(studentsList);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }
}
