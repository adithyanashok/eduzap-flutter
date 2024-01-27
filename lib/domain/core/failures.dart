import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';
part 'failures.g.dart';

@freezed
class MainFailures with _$MainFailures {
  const factory MainFailures.failures({required String error}) = _Failures;

  factory MainFailures.fromJson(Map<String, dynamic> json) =>
      _$MainFailuresFromJson(json);
}
