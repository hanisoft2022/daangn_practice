import 'package:freezed_annotation/freezed_annotation.dart';

part 'w_floating_daangn_button.state.freezed.dart';
part 'w_floating_daangn_button.state.g.dart';

@freezed
class FloatingDaangnButtonState with _$FloatingDaangnButtonState {
  factory FloatingDaangnButtonState({
    required bool isExpanded,
    required bool isSmall,
  }) = _FloatingDaangnButtonState;

  factory FloatingDaangnButtonState.fromJson(Map<String, dynamic> json) => _$FloatingDaangnButtonStateFromJson(json);
}
