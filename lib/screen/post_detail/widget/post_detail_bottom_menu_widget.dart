import 'package:fast_app_base/common/common/common.dart';
import 'package:flutter/material.dart';

class PostDetailBottomMenuWidget extends StatelessWidget {
  final int price;

  const PostDetailBottomMenuWidget({
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.viewPaddingBottom + context.deviceHeight * 0.1,
      child: Column(
        children: [
          const Divider(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                width10,
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_rounded),
                ),
                const VerticalDivider().pSymmetric(v: 10),
                width10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          price.toWon().text.bold.make(),
                          const SizedBox(height: 20, child: VerticalDivider()).pOnly(left: 5),
                          TextButton.icon(
                            onPressed: () {},
                            label: '당근페이'.text.bold.make(),
                            icon: const Icon(Icons.attach_money_outlined),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              foregroundColor: Colors.deepOrangeAccent,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: '가격 제안하기'.text.color(Colors.deepOrangeAccent).bold.make(),
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: '채팅하기'.text.color(Colors.white).bold.make(),
                ),
                width10,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
