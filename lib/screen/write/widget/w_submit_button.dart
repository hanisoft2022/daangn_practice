import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/screen/write/screen/s_write.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback? onPressed;

  final bool isLoading;

  const SubmitButton({
    super.key,
    required this.onPressed,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(double.infinity, WriteScreen.buttonHeight),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepOrangeAccent,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.white),
      onPressed: onPressed,
      iconAlignment: IconAlignment.end,
      icon: isLoading
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              ),
            ).pOnly(left: 10)
          : null,
      label: (isLoading ? '저장중' : '작성 완료').text.size(18).bold.make(),
    );
  }
}
