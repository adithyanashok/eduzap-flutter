import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/earnings/i_earnings_facade.dart';
import 'package:eduzap/domain/earnings/model/earnings_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IEarningsFacade)
class EarningsRepositary extends IEarningsFacade {
  @override
  Future<Either<MainFailures, EarningsModel>> addATransaction(earnings) async {
    try {
      final db = FirebaseFirestore.instance;

      final docRef = await db.collection('earnings').add(earnings.toJson());
      final docSnap = await docRef.get();
      final data = docSnap.data();
      final earningsmodel = EarningsModel.fromJson(data!);

      return Right(earningsmodel);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }

  @override
  Future<Either<MainFailures, List<EarningsModel>>> getEarnings() async {
    try {
      final db = FirebaseFirestore.instance;

      final docRef = await db.collection('earnings').get();
      final list = docRef.docs.map((e) {
        return EarningsModel.fromJson(e.data());
      }).toList();

      return Right(list);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }

  @override
  Future<Either<MainFailures, int>> getTotalEarnings() async {
    try {
      final db = FirebaseFirestore.instance;
      int val = 0;

      final docRef = await db.collection('earnings').get();
      for (var value in docRef.docs) {
        final model = EarningsModel.fromJson(value.data());
        val += model.amount;
      }

      return Right(val);
    } catch (e) {
      return Left(MainFailures.failures(error: e.toString()));
    }
  }
}
