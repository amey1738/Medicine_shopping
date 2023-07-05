import 'package:flutter/material.dart';


class CustomContainer extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final Color? containerColor;
  final double? radius;
  final double? stroke;
  final Color? strokeColor;
  final double height;
  final double width;
  const CustomContainer({super.key,
    this.child,
    this.color=Colors.white,
    this.radius=0.0,
    this.stroke=0.0,
    required this.height,
    required this.width,
    this.strokeColor=Colors.white, this.containerColor=Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration:  BoxDecoration(
          color: containerColor,
          border: Border.all(width: stroke!,color: strokeColor!,),
          borderRadius: BorderRadius.all(Radius.circular(radius!))
      ),
      child: child,
    );
  }
}
