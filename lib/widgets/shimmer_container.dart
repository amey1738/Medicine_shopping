import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test_shopping/utils/color_constant.dart';

class ShimmerContainer extends StatelessWidget {
  final double? paddingRight;
  final double? paddingLeft;
  final double? paddingTop;
  final double? paddingBottom;
  final bool shimmerEnable;
  final Widget child;

  const ShimmerContainer({Key? key,
    this.paddingRight=0.0,
    this.paddingLeft=0.0,
    this.paddingTop=0.0,
    this.paddingBottom=0.0,
    required this.shimmerEnable,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: paddingLeft!,right: paddingRight!,bottom: paddingBottom!,top: paddingTop!),
      child:Shimmer.fromColors(
        baseColor: shimmerEnable==true?greenColor:blackColor,
        enabled: shimmerEnable,
        highlightColor: shimmerEnable==true?blackColor:Colors.black,
        child: ListView.builder(
            itemCount: 20,
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 10.h, right: 10.h),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return child;
            })
      ),
    );
  }
}
