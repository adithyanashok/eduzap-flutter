import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:eduzap/domain/core/failures.dart';
import 'package:eduzap/domain/earnings/i_earnings_facade.dart';
import 'package:eduzap/domain/earnings/model/earnings_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'earnings_event.dart';
part 'earnings_state.dart';
part 'earnings_bloc.freezed.dart';

@injectable
class EarningsBloc extends Bloc<EarningsEvent, EarningsState> {
  IEarningsFacade iEarningsFacade;
  EarningsBloc(this.iEarningsFacade) : super(EarningsState.initial()) {
    on<_AddATransaction>(
      (event, emit) async {
        final earningsOpt =
            await iEarningsFacade.addATransaction(event.earnings);
        emit(
          earningsOpt.fold(
            (failure) => state.copyWith(
              earningsList: [],
              earningsListOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              earningsList: [],
              earningsListOpt: Some(
                Right([success]),
              ),
            ),
          ),
        );
      },
    );

    on<_GetEarnings>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final earningsOpt = await iEarningsFacade.getEarnings();
        log(earningsOpt.toString());
        emit(
          earningsOpt.fold(
            (failure) => state.copyWith(
              earningsList: [],
              isLoading: false,
              earningsListOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              earningsList: success,
              isLoading: false,
              earningsListOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );

    on<_GetTotalEarnings>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final earningsOpt = await iEarningsFacade.getTotalEarnings();
        log(earningsOpt.toString());
        emit(
          earningsOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
            ),
            (success) => state.copyWith(
              totalEarnings: success,
              isLoading: false,
            ),
          ),
        );
      },
    );
  }
}
