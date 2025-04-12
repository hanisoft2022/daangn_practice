import 'package:fast_app_base/common/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WriteScreen extends StatefulHookConsumerWidget {
  const WriteScreen({super.key});

  @override
  ConsumerState<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends ConsumerState<WriteScreen> {
  final List<String> imageList = [];

  @override
  Widget build(BuildContext context) {
    final titleController = useTextEditingController();
    final priceController = useTextEditingController();
    final descriptionController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: '내 물건 팔기'.text.bold.size(20).make(),
        actions: [
          TextButton(
            onPressed: () {},
            child: '임시저장'.text.color(Colors.white).bold.make(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _ImageSelectWidget(imageList),
            _TitleEditor(titleController),
            _PriceEditor(priceController),
            _DescriptionEditor(descriptionController),
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size.fromHeight(75),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        onPressed: () {},
        child: '작성 완료'.text.size(18).bold.make(),
      ),
    );
  }
}

class _ImageSelectWidget {}

class _TitleEditor {}

class _PriceEditor {}

class _DescriptionEditor {}
