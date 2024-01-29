import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:eduzap/domain/saved/i_saved_facade.dart';
import 'package:eduzap/domain/saved/model/saved_course_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISavedFacade)
class SavedRepositary extends ISavedFacade {
  @override
  Future<Either<MainFailures, SavedCourseModel>> saveCourse(
      SavedCourseModel savedCourseModel) async {
    try {
      final db = FirebaseFirestore.instance;

      await db
          .collection('savedCourses')
          .doc(savedCourseModel.courseId)
          .set(savedCourseModel.toJson());
      final docSnap = await db
          .collection('savedCourses')
          .doc(savedCourseModel.courseId)
          .get();
      final savedCourse = SavedCourseModel.fromJson(docSnap.data()!);

      return Right(savedCourse);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }

  @override
  Future<Either<MainFailures, List<SavedCourseModel>>> getSavedList() async {
    try {
      final db = FirebaseFirestore.instance;
      final userId = FirebaseAuth.instance.currentUser?.uid;
      final querySnap = await db
          .collection('savedCourses')
          .where("userId", isEqualTo: userId)
          .get();
      final savedList = querySnap.docs.map((e) {
        return SavedCourseModel.fromJson(e.data());
      }).toList();
      return Right(savedList);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }

  @override
  Future<Either<MainFailures, SavedCourseModel>> getSavedCourse(
      String courseId) async {
    try {
      final db = FirebaseFirestore.instance;
      final docSnap = await db.collection('savedCourses').doc(courseId).get();
      final savedCourse = SavedCourseModel.fromJson(docSnap.data()!);
      return Right(savedCourse);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }
}
