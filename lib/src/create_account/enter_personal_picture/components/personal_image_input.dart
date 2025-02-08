import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

import '../../../../common_lib.dart';

class PersonalImageInput extends StatefulWidget {
  const PersonalImageInput({
    required this.onPickImage,
    super.key,
  });
  final void Function(File image) onPickImage;

  @override
  State<PersonalImageInput> createState() => _PersonalImageInputState();
}

class _PersonalImageInputState extends State<PersonalImageInput> {
  File? _selectedImage;

  dynamic _takePicture(bool isFromGallery) async {
    try {
      FilePickerResult? result;
      if (isFromGallery) {
        result = await FilePicker.platform.pickFiles(
          type: FileType.image,
          allowMultiple: false,
        );
      } else {}

      if (result != null) {
        File pickedFile = File(result.files.single.path!);
        setState(() => _selectedImage = pickedFile);
        widget.onPickImage(_selectedImage!);
      } else {
        // User canceled the picker
        return;
      }
    } catch (e) {
      print(e);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Container(
      decoration: BoxDecoration(
        color: Theme.of(context).hoverColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: SvgPicture.asset(
          Assets.assetsIconsImage,
          height: 100,
          color: Theme.of(context).hintColor.withAlpha(100),
        ),
      ),
    );

    if (_selectedImage != null) {
      content = ClipOval(
        clipBehavior: Clip.hardEdge,
        child: Image.file(
          _selectedImage!,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      );
    }

    return Column(
      children: [
        Container(
          height: 270,
          width: 270,
          padding: EdgeInsets.all(Insets.small / 1.5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFb77134),
                Color(0xFFffae48),
                Color(0xFFffae48),
                Color(0xFFffae48),
              ],
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            padding: EdgeInsets.all(Insets.small),
            child: content,
          ),
        ),
        SizedBox(height: Insets.medium),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () async => await _takePicture(false),
              icon: Padding(
                padding: EdgeInsets.all(Insets.exSmall / 2),
                child: SvgPicture.asset(
                  Assets.assetsIconsCamera,
                  color: Colors.white,
                ),
              ),
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(width: Insets.small),
            OutlinedButton(
              onPressed: () async => await _takePicture(true),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(200, 50),
              ),
              child: Text(
                'أختر من المعرض',
                style: TextStyle(
                  fontSize: CustomFontsTheme.mediumSize,
                  color: Theme.of(context).hintColor.withAlpha(100),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
