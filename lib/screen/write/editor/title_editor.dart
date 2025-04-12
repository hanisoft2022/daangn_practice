import 'package:fast_app_base/common/common/common.dart';
import 'package:flutter/material.dart';

class TitleEditor extends StatelessWidget {
  final TextEditingController controller;

  const TitleEditor(this.controller, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '제목'.text.bold.size(18).make(),
        height10,
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.all(Radius.circular(10))),
            hintText: '제목',
          ),
        )
      ],
    );
  }
}
