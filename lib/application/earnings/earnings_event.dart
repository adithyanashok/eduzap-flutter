part of 'earnings_bloc.dart';

@freezed
class EarningsEvent with _$EarningsEvent {
  const factory EarningsEvent.addATransaction(EarningsModel earnings) =
      _AddATransaction;

  const factory EarningsEvent.getEarnings() = _GetEarnings;
  const factory EarningsEvent.getTotalEarnings() = _GetTotalEarnings;
}
