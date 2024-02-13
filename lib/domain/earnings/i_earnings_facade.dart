import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/earnings/model/earnings_model.dart';

abstract class IEarningsFacade {
  Future<Either<MainFailures, EarningsModel>> addATransaction(
    EarningsModel earnings,
  );

  Future<Either<MainFailures, List<EarningsModel>>> getEarnings();
  Future<Either<MainFailures, int>> getTotalEarnings();
}
