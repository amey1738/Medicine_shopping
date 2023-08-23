import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

class OnBoardingContent extends StatelessWidget {
  final String imageLink;
  final String title;
  final String desc;
  const OnBoardingContent({super.key, required this.imageLink, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.h),
      child: Column(
        children: [
          SizedBox(height: 40.h,),
          Image.network(sourceImageLink,width: 240.h,),
          MyText(text: title, fontName: 'baloo', fontSize: 18.sp, fontWeight: FontWeight.bold,),
          MyText(text: desc, fontName: 'baloo', fontSize: 14.sp),

        ],
      ),
    );
  }
}
