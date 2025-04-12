import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/screen/write/screen/s_write.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SubmitButton(
    this.onPressed, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, WriteScreen.buttonHeight),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      onPressed: onPressed,
      child: '작성 완료'.text.size(18).bold.make(),
    );
  }
}
