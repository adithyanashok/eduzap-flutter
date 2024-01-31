import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/course/model/course_model.dart';
import 'package:eduzap/domain/my_learnings/i_mylearning_facade.dart';
import 'package:eduzap/domain/my_learnings/model/my_learning_model.dart';
import 'package:eduzap/infrastructure/core/collections.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMyLearningFacade)
class MyLearningRepositary extends IMyLearningFacade {
  @override
  Future<Either<MainFailures, bool>> saveMyLearning(String courseId) async {
    try {
      final db = FirebaseFirestore.instance;
      final userId = FirebaseAuth.instance.currentUser?.uid;

      final docSnap =
          await db.collection(Collection.courses).doc(courseId).get();

      final myLearningDoc =
          await db.collection("mylearnings").doc(courseId).get();

      if (myLearningDoc.data() == null) {
        final course = CourseModel.fromJson(docSnap.data()!);
        final myLearnings = MyLearningModel(
          course: course.toJson(),
          userId: userId!,
          courseId: courseId,
        );

        await db
            .collection("mylearnings")
            .doc(courseId)
            .set(myLearnings.toJson());
        return const Right(true);
      } else {
        return const Right(false);
      }
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }

  @override
  Future<Either<MainFailures, List<MyLearningModel>>> getMyLearning() async {
    try {
      final db = FirebaseFirestore.instance;
      final userId = FirebaseAuth.instance.currentUser?.uid;
      final querySnap = await db
          .collection('mylearnings')
          .where("userId", isEqualTo: userId)
          .get();
      final myLearningList = querySnap.docs.map((e) {
        return MyLearningModel.fromJson(e.data());
      }).toList();
      return Right(myLearningList);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }
}
