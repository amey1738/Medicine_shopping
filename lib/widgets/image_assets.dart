

import 'package:flutter/material.dart';

class ImageAssets extends StatelessWidget {
  final String imageAssets;
  final double? height;
  final double width;
  final Color? imageColor;
  final VoidCallback? click;
  const ImageAssets({Key? key, required this.imageAssets,  this.height, required this.width, this.click, this.imageColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
        child: Image.asset(imageAssets,width: width,height: height,color: imageColor));
  }
}
