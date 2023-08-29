import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';

class MyButtons extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback click;
  final double? fontSize;
  final double? height;
  final double? width;
  final double? circular;
  final FontWeight? fontWeight;
  final Color? fontColor;
  const MyButtons(
      this.text,
      this.color,
      {Key? key, required this.click,required this.fontSize, this.circular=5,
    this.fontWeight=FontWeight.w500, this.height, this.width, this.fontColor=blackColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Container(
        width: width,
       height: height,
       // padding: EdgeInsets.symmetric(vertical:17.h),
        decoration:   BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(circular!)),
          color: color,
        ),
        child: Center(
          child: Text(text,
            style: TextStyle(
                fontFamily: 'baloo',
                color: fontColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
                decoration: TextDecoration.none),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
