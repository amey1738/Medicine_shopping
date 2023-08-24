import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/models/onboard_model.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

class OnBoardingContent extends StatelessWidget {
  final OnboardModel onboardModel;
  const OnBoardingContent({super.key, required this.onboardModel, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.h),
      child: Column(
        children: [
          Image.network(onboardModel.image.toString(),width: 240.h,),
          SizedBox(height: 20.h,),
          MyText(text: onboardModel.title.toString(), fontName: 'baloo', fontSize: 18.sp, fontWeight: FontWeight.bold,),
          MyText(text: onboardModel.desc.toString(), fontName: 'baloo', fontSize: 14.sp),

        ],
      ),
    );
  }
}
