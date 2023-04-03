import 'package:freezed_annotation/freezed_annotation.dart';
part 'common_failures.freezed.dart';

@freezed
class MainFalure with _$MainFalure {
  const factory MainFalure.clientFailure() = _clientFailure;
  const factory MainFalure.serverFailure() = _serverFailure;
}
