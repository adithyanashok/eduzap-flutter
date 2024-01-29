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
      return Right(user);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }
}
