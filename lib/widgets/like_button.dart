
import 'package:flutter/material.dart';
import 'package:test_shopping/utils/color_constant.dart';

class LikeButton extends StatelessWidget {
  final VoidCallback inactiveLike,activeLike;
  final IconData icons;
  const LikeButton({super.key, required this.inactiveLike, required this.activeLike, required this.icons});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        InkWell(
            onTap: inactiveLike,
            child:  Icon(icons,size: 30,color: whiteColor)),
        InkWell(
            onTap: activeLike,
            child:  Icon(icons,size: 30,color: whiteColor)),
      ],
    );
  }
}
