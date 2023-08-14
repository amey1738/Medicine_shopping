import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/widgets/my_text.dart';

class CustomInformationWidget extends StatelessWidget {
  final String title;
  final String text;
  const CustomInformationWidget({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h, right: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: title,
            fontName: "baloo",
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: MyText(
                text: text, fontName: "baloo", fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
