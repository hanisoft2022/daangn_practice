import 'package:fast_app_base/common/common/common.dart';
import 'package:flutter/material.dart';

class TitleEditor extends StatelessWidget {
  final TextEditingController controller;

  const TitleEditor(this.controller, {super.key});
  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.all(Radius.circular(10)));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '제목'.text.bold.size(18).make(),
        height10,
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder.copyWith(borderSide: const BorderSide(color: Colors.deepOrangeAccent)),
            hintText: '제목',
          ),
        ),
      ],
    );
  }
}
