
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/widgets/my_text.dart';

class MultiChoiceItemWidget extends StatelessWidget {
  final String title;
  final Color boxColor;
  final VoidCallback click;
  const MultiChoiceItemWidget({super.key, required this.title, required this.boxColor, required this.click,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Padding(
        padding:  EdgeInsets.only(top: 5.h,bottom: 5.h),
        child: Container(
          height: 40.h,
          decoration: BoxDecoration(
            color:  boxColor,
              borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: Padding(
            padding:  EdgeInsets.all(2.h),
            child: Center(child: MyText(text: title, fontName: "baloo", fontSize: 14.sp, fontWeight: FontWeight.w500,)),
          ),
        ),
      ),
    );;
  }
}
