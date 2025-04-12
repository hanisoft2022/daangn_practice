import 'package:fast_app_base/common/common/common.dart';
import 'package:flutter/material.dart';

class DescriptionEditor extends StatelessWidget {
  final TextEditingController controller;

  const DescriptionEditor(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.all(Radius.circular(10)));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '자세한 설명'.text.bold.size(18).make(),
        height10,
        TextField(
          controller: controller,
          maxLines: 10,
          decoration: InputDecoration(
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder.copyWith(borderSide: const BorderSide(color: Colors.deepOrangeAccent)),
            hintText: '''
~~~에 올릴 게시글 내용을 작성해 주세요. (판매 금지 물품은 게시가 제한될 수 있어요.) 

신뢰할 수 있는 거래를 위해 자세히 적어주세요.
과학기술정보통신부, 한국 인터넷진흥원과 함께 해요.
''',
          ),
        ),
      ],
    );
  }
}
