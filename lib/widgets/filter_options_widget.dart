import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class FilterOptionsWidget extends StatelessWidget {
  const FilterOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: greyBgColor,
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MyText(text: 'Categories', fontName: 'baloo', fontSize: 14.sp),
            MyText(text: 'Brand', fontName: 'baloo', fontSize: 14.sp),
            MyText(text: 'Price', fontName: 'baloo', fontSize: 14.sp),

          ],
        ),
      ),
    );
  }
}
