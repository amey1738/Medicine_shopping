import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';

class DotsIndicator extends StatelessWidget {
  final bool isActive;
  const DotsIndicator({super.key, this.isActive= false});



  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 40.h: 20.h ,
      width: 4.h,
      decoration: BoxDecoration(
          color: medicalBlue,
          borderRadius: BorderRadius.all(Radius.circular(12.h))
      ),
    );
  }
}
