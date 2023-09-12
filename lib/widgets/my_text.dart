import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final String fontName;
  final double fontSize;
  FontWeight? fontWeight;
  final Color? color;
  final double? textGap;
  final TextAlign? textAlign;
  final double? paddingRight;
  final double? paddingLeft;
  final double? paddingTop;
  final double? paddingBottom;
  TextDecoration? lineThrough;
  int? maxLines=0;
  final TextOverflow? textOverflow;
  MyText({Key? key, required this.text, required this.fontName, required this.fontSize,  this.fontWeight, this.color, this.textGap, this.textAlign,
    this.paddingRight=0.0, this.paddingLeft=0.0, this.paddingTop=0.0, this.paddingBottom=0.0,
    this.maxLines, this.textOverflow,this.lineThrough

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingLeft!,right: paddingRight!,bottom: paddingBottom!,top: paddingTop!),
      child: Text(
        overflow: textOverflow,
          maxLines: maxLines,
          softWrap: false,
          textAlign: textAlign,
          text,style: TextStyle(
          decoration: lineThrough,
        height: textGap,
        fontFamily: fontName,fontSize: fontSize,fontWeight: fontWeight,color: color
      )),
    );
  }
}
