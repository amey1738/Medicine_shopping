

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test_shopping/utils/color_constant.dart';

class MyTextWithShimmer extends StatelessWidget {
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
  final bool shimmerEnable;
  int? maxLines=0;
  final TextOverflow? textOverflow;
  MyTextWithShimmer({Key? key, required this.text, required this.fontName, required this.fontSize,  this.fontWeight, this.color, this.textGap, this.textAlign,
    this.paddingRight=0.0, this.paddingLeft=0.0, this.paddingTop=0.0, this.paddingBottom=0.0, this.maxLines, this.textOverflow, required this.shimmerEnable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingLeft!,right: paddingRight!,bottom: paddingBottom!,top: paddingTop!),
      child:Shimmer.fromColors(
        baseColor: shimmerEnable==true?greenColor:blackColor,
        enabled: shimmerEnable,
        highlightColor: shimmerEnable==true?blackColor:Colors.black,
        child:Text(
            overflow: textOverflow,
            maxLines: maxLines,
            textAlign: textAlign,
            softWrap: false,
            text,style: TextStyle(
            height: textGap,
            fontFamily: fontName,fontSize: fontSize,fontWeight: fontWeight,color: color
        )),
      ),





    );
  }
}
