import 'dart:io';


import 'package:flutter/material.dart';
import 'package:test_shopping/utils/color_constant.dart';

class ProfileViewCircularImage extends StatelessWidget {

  final String imagePaths;

  const ProfileViewCircularImage({super.key, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            border: Border.all(width: 1, color: greenColor)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Align(
            alignment: Alignment.center,
            heightFactor: 0.5,
            child: Image.file(File(imagePaths)),
          ),
        )
    );
  }
}
