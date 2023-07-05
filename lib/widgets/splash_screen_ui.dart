
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/image_assets.dart';
import 'package:test_shopping/widgets/my_text.dart';

class SplashScreenUI extends StatelessWidget {
  const SplashScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Center(
            child: Container(
                width: 150.w,
                height: 150.h,
                decoration:  BoxDecoration(
                    color: lightGreenColor,
                    borderRadius: BorderRadius.all(Radius.circular(100.r))
                ),
                child:  Padding(
                  padding: EdgeInsets.all(18.0.h),
                  child: ImageAssets(imageAssets: 'assets/images/animal_katta_logo.png', width: 100.w, height: 100.h),
                ))),

         SizedBox(height: 15.h),

        MyText(textAlign: TextAlign.center,
            text: 'Animal Katta',
            fontName: 'baloo',
            fontSize: 26.sp,
            fontWeight: FontWeight.w700,
            color: whiteColor),

        MyText(color: whiteColor,
            textAlign: TextAlign.center,text: 'One Stop Solutions for\nAnimals Trade and Need',
            fontName: 'baloo', fontSize: 16.sp,
            fontWeight: FontWeight.w400),
      ],
    );
  }

}
