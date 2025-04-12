import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/screen/write/editor/description_editor.dart';
import 'package:fast_app_base/screen/write/editor/price_editor.dart';
import 'package:fast_app_base/screen/write/editor/title_editor.dart';
import 'package:fast_app_base/screen/write/widget/w_image_select.dart';
import 'package:fast_app_base/screen/write/widget/w_submit_button.dart';
import 'package:fast_app_base/screen/write/widget/w_write_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class WriteScreen extends HookWidget {
  WriteScreen({super.key});

  final List<String> imageUrlList = [];

  static const double buttonHeight = 50.0;
  @override
  Widget build(BuildContext context) {
    final titleController = useTextEditingController();
    final priceController = useTextEditingController();
    final descriptionController = useTextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const WriteScreenAppBarWidget(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageSelectWidget(
                  imageUrlList,
                  onTap: () {},
                ),
                TitleEditor(titleController),
                height10,
                PriceEditor(priceController),
                height10,
                DescriptionEditor(descriptionController),
                Gap(context.viewPaddingBottom + buttonHeight + 10),
              ],
            ).pSymmetric(h: 10),
          ),
          Positioned(
            bottom: context.viewPaddingBottom,
            left: 10,
            right: 10,
            child: const SubmitButton(),
          ),
        ],
      ),
    );
  }
}
