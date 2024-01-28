import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/course/i_course_facade.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:eduzap/domain/course/util/media.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICourseFacade)
class CourseRepositary extends ICourseFacade {
  // Upload course
  @override
  Future<Either<MainFailures, CourseModel>> uploadCourse(
      CourseModel course) async {
    try {
      log(course.lessons.toString());
      if (course.courseTitle.isEmpty ||
          course.courseDescription.isEmpty ||
          course.courseOverview.isEmpty ||
          course.lessons.isEmpty) {
        return const Left(
          MainFailures.failures(error: "Please fill all the fields"),
        );
      } else {
        final db = FirebaseFirestore.instance;

        course = course.copyWith(
          imageUrl: await uploadImage(course.imageUrl),
          videoUrl: await uploadVideo(course.videoUrl),
        );
        final docRef = await db.collection('courses').add(course.toJson());
        await db.collection('courses').doc(docRef.id).update({"id": docRef.id});
        final docSnap = await docRef.get();
        final data = docSnap.data();
        final coursemodel = CourseModel.fromJson(data!);

        return Right(coursemodel);
      }
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }

  // Upload cover image and return the download url
  Future<String> uploadImage(String image) async {
    try {
      final imageRef = FirebaseStorage.instance.ref().child(image);
      await imageRef.putFile(File(image));
      final String imageUrl = await imageRef.getDownloadURL();
      return imageUrl;
    } catch (e) {
      return '';
    }
  }

  // Upload video and return the download url
  Future<String> uploadVideo(String video) async {
    try {
      final compVideo = await Media.compressVideo(video);
      final videoRef = FirebaseStorage.instance.ref().child(compVideo!.path);
      await videoRef.putFile(compVideo);
      final String videoUrl = await videoRef.getDownloadURL();
      return videoUrl;
    } catch (e) {
      return '';
    }
  }

  // Fetch all courses from the firestore
  @override
  Future<Either<MainFailures, List<CourseModel>>> getAllCourse() async {
    try {
      final db = FirebaseFirestore.instance;
      final querySnap = await db.collection('courses').get();
      final courseList = querySnap.docs.map((e) {
        return CourseModel.fromJson(e.data());
      }).toList();
      return Right(courseList);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }

  // Fetch a single course by id
  @override
  Future<Either<MainFailures, CourseModel>> getCourse(String id) async {
    try {
      final db = FirebaseFirestore.instance;
      final docSnap = await db.collection('courses').doc(id).get();
      final course = CourseModel.fromJson(docSnap.data()!);
      return Right(course);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }

  // Search course by query
  @override
  Future<Either<MainFailures, List<CourseModel>>> searchCourse(
      String query) async {
    try {
      final db = FirebaseFirestore.instance;
      if (query.isEmpty) {
        return const Left(MainFailures.failures(error: "Type something"));
      } else {
        final querySnap = await db
            .collection('courses')
            .where('category', isGreaterThanOrEqualTo: query)
            .get();
        final courseList = querySnap.docs.map((e) {
          return CourseModel.fromJson(e.data());
        }).toList();
        if (courseList.isEmpty) {
          return const Left(MainFailures.failures(error: "Not found"));
        }
        return Right(courseList);
      }
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }
}
