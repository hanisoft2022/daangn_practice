import 'package:fast_app_base/common/common/common.dart';
import 'package:fast_app_base/entity/dummy/dummies.dart';
import 'package:fast_app_base/entity/post/simple_product_post.dart';
import 'package:fast_app_base/entity/product/product.dart';
import 'package:fast_app_base/entity/product/product_status.dart';
import 'package:fast_app_base/entity/user/address.dart';
import 'package:fast_app_base/screen/main/tab/home/state_manager/provider.dart';
import 'package:fast_app_base/screen/post_detail/screen/s_post_detail.dart';
import 'package:fast_app_base/screen/write/dialog/d_photo_picker.dart';
import 'package:fast_app_base/screen/write/editor/description_editor.dart';
import 'package:fast_app_base/screen/write/editor/price_editor.dart';
import 'package:fast_app_base/screen/write/editor/title_editor.dart';
import 'package:fast_app_base/screen/write/widget/w_image_select.dart';
import 'package:fast_app_base/screen/write/widget/w_submit_button.dart';
import 'package:fast_app_base/screen/write/widget/w_write_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class WriteScreen extends HookConsumerWidget {
  const WriteScreen({super.key});

  static const double buttonHeight = 50.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = useTextEditingController();
    final priceController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final isLoading = useState(false);
    final imageUrls = useState<List<String>>([]);

    final postNotifier = ref.read(postProvider.notifier);

    useListenable(titleController);
    useListenable(priceController);
    useListenable(descriptionController);

    final bool isValid = titleController.text.isNotEmpty && priceController.text.isNotEmpty && descriptionController.text.isNotEmpty;

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
                  imageUrls.value,
                  onTap: () async => showDialog(
                    context: context,
                    builder: (context) => PhotoPickerDialog(
                      onImageSourceSelected: (ImageSource source) async {
                        final XFile? image = await ImagePicker().pickImage(source: source);
                        if (image != null) {
                          imageUrls.value = [...imageUrls.value, image.path];
                        }
                      },
                    ),
                  ),
                ),
                TitleEditor(titleController),
                height10,
                PriceEditor(priceController),
                height30,
                DescriptionEditor(descriptionController),
                Gap(context.viewPaddingBottom + buttonHeight + 20),
              ],
            ).pSymmetric(h: 10),
          ),
          Positioned(
            bottom: context.viewPaddingBottom,
            left: 10,
            right: 10,
            child: SubmitButton(
              isLoading: isLoading.value,
              onPressed: isValid
                  ? () {
                      final String title = titleController.text;
                      final int price = int.parse(priceController.text);
                      final String description = descriptionController.text;
                      isLoading.value = !isLoading.value;
                      final simpleProductPost = SimpleProductPost(
                        8,
                        user: user2,
                        product: Product(
                          user: user2,
                          title: title,
                          price: price,
                          status: ProductStatus.normal,
                          imageUrls: imageUrls.value,
                        ),
                        content: description,
                        address: Address('서울시 특별한 주소', '다트동'),
                        chatCount: 0,
                        likeCount: 1,
                        createdAt: DateTime.now(),
                      );
                      postNotifier.addPost(simpleProductPost);

                      Nav.pop(context);
                      Nav.push(PostDetailScreen(id: simpleProductPost.id, simpleProductPost: simpleProductPost));
                    }
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
