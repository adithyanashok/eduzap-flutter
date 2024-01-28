import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/rating/i_rating_facade.dart';
import 'package:eduzap/domain/rating/model/rating_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRatingFacade)
class RatingRepositary extends IRatingFacade {
  @override
  Future<Either<MainFailures, RatingModel>> addRating(
      RatingModel rating) async {
    try {
      if (rating.ratingString.isEmpty) {
        return const Left(
          MainFailures.failures(error: "Input field can't be empty"),
        );
      } else {
        final db = FirebaseFirestore.instance;

        final docRef = await db.collection('ratings').add(rating.toJson());
        await db.collection('ratings').doc(docRef.id).update({"id": docRef.id});
        final docSnap = await docRef.get();
        final data = docSnap.data();
        final ratingmodel = RatingModel.fromJson(data!);

        return Right(ratingmodel);
      }
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }

  @override
  Future<Either<MainFailures, List<RatingModel>>> getRatingByCourse(
      String courseId) async {
    try {
      final db = FirebaseFirestore.instance;
      if (courseId.isEmpty) {
        return const Left(MainFailures.failures(error: "Course id is empty"));
      } else {
        List<RatingModel> reviews = [];
        List ratings = [];
        final querySnap = await db
            .collection('ratings')
            .where('courseId', isEqualTo: courseId)
            .get();
        // final ratingss = querySnap.docs.map((e) {
        //   return RatingModel.fromJson(e.data());
        // }).toList();

        for (var doc in querySnap.docs) {
          final ratingData = doc.data();
          ratings.add(ratingData['rating']);
          final totalRatings = ratings
                  .map((e) => e)
                  .reduce((value, element) => value + element) /
              ratings.length;

          db.collection('courses').doc(courseId).update(
            {
              "rating": totalRatings,
            },
          );
          final rating = RatingModel.fromJson(ratingData);
          // add rating to ratings array
          reviews.add(rating);
        }

        return Right(reviews);
      }
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }
}
