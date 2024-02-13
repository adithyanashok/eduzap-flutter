part of 'earnings_bloc.dart';

@freezed
class EarningsState with _$EarningsState {
  const factory EarningsState({
    required bool isLoading,
    required int totalEarnings,
    required List<EarningsModel> earningsList,
    required Option<Either<MainFailures, List<EarningsModel>>> earningsListOpt,
  }) = _EarningsState;

  factory EarningsState.initial() {
    return const EarningsState(
      isLoading: false,
      earningsList: [],
      earningsListOpt: None(),
      totalEarnings: 0,
    );
  }
}
