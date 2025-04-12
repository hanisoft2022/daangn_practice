import 'package:fast_app_base/common/common/common.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoPickerDialog extends StatelessWidget {
  final Function(ImageSource) onImageSourceSelected;

  const PhotoPickerDialog({
    Key? key,
    required this.onImageSourceSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        TextButton.icon(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            iconSize: 40,
          ),
          icon: const Icon(Icons.camera_alt_outlined),
          label: const Text('카메라', style: TextStyle(fontSize: 20)),
          onPressed: () {
            onImageSourceSelected(ImageSource.camera);
            Navigator.pop(context);
          },
        ),
        const Divider().pSymmetric(h: 10),
        TextButton.icon(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            iconSize: 40,
          ),
          icon: const Icon(Icons.image_outlined),
          label: const Text('갤러리', style: TextStyle(fontSize: 20)),
          onPressed: () {
            onImageSourceSelected(ImageSource.gallery);
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
