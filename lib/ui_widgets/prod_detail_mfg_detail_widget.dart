import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/circular_image.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ProdDetailMfgDetailWidget extends StatelessWidget {
  const ProdDetailMfgDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: greyBgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.h),
            child: MyText(
              text: "Manufacturing Information",
              fontName: "baloo",
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h, right: 10.h),
            child: Row(
              children: [
                CircularImage(radius: 30.h),
                SizedBox(
                  width: 10.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: 'Company Name',
                      fontName: 'baloo',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    MyText(
                      text: 'Mfg. Date',
                      fontName: 'baloo',
                      fontSize: 12.sp,
                    ),
                    MyText(
                      text: 'Exp. Date',
                      fontName: 'baloo',
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
