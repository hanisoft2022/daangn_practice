import 'package:fast_app_base/screen/main/fab/w_floating_daangn_button.state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FloatingDaangnButtonNotifier extends StateNotifier<FloatingDaangnButtonState> {
  FloatingDaangnButtonNotifier(super.state);

  bool needToMakeFABBigger = false;

  void toggleMenu() {
    // 기존 상태
    final isExpanded = state.isExpanded;
    final isSmall = state.isSmall;

    // 확장되지 않은 상태에서 작은 크기가 아니라면 다음 탭에서 커지도록 설정
    if (!isSmall) {
      needToMakeFABBigger = true;
    }

    // 버튼 상태 업데이트
    if (needToMakeFABBigger) {
      // needToMakeFABBigger가 true인 경우, 버튼을 확장하고 큰 크기로 설정
      state = state.copyWith(isExpanded: !isExpanded, isSmall: false);
      needToMakeFABBigger = false; // 플래그 초기화
    } else {
      // 일반적인 토글 로직
      state = state.copyWith(isExpanded: !isExpanded, isSmall: true);
    }
  }

  void onBackgroundTap() {
    state = state.copyWith(isExpanded: false);
  }

  void changeButtonSize({required bool isSmall}) {
    if (state.isExpanded) return;

    state = state.copyWith(isSmall: isSmall);
  }
}

final floatingDaangnButtonStateProvider = StateNotifierProvider<FloatingDaangnButtonNotifier, FloatingDaangnButtonState>(
  (ref) => FloatingDaangnButtonNotifier(
    FloatingDaangnButtonState(
      isExpanded: false,
      isSmall: false,
    ),
  ),
);
