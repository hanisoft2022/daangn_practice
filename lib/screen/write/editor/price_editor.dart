import 'package:fast_app_base/common/common/cli_common.dart';
import 'package:fast_app_base/common/common/common.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PriceEditor extends HookWidget {
  final TextEditingController controller;

  const PriceEditor(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    final isSellMode = useState(true);
    final priceNode = useFocusNode();

    const textFieldButtonStyle = OutlineInputBorder(borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.all(Radius.circular(10)));
    var transactionSeletectButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.white70,
      foregroundColor: Colors.black,
    );
    var transactionUnseletectButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.white,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '거래 방식'.text.bold.size(18).make(),
        height10,
        Row(
          children: [
            ElevatedButton(
              onPressed: () async {
                controller.clear();
                isSellMode.value = true;
                Future.delayed(5.ms);
              },
              style: isSellMode.value ? transactionSeletectButtonStyle : transactionUnseletectButtonStyle,
              child: '판매하기'.text.bold.make(),
            ),
            width10,
            ElevatedButton(
              onPressed: () {
                isSellMode.value = false;
                controller.text = '0';
              },
              style: isSellMode.value ? transactionUnseletectButtonStyle : transactionSeletectButtonStyle,
              child: '나눔하기'.text.bold.make(),
            ),
          ],
        ),
        height10,
        TextField(
          focusNode: priceNode,
          enabled: isSellMode.value,
          controller: controller,
          decoration: InputDecoration(
            border: textFieldButtonStyle,
            focusedBorder: textFieldButtonStyle.copyWith(borderSide: const BorderSide(color: Colors.deepOrangeAccent)),
            hintText: '₩ 가격을 입력해주세요.',
          ),
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          keyboardType: const TextInputType.numberWithOptions(),
        ),
      ],
    );
  }
}
