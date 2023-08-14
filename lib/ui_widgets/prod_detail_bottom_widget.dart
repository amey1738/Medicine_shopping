import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ProdDetailBottomWidget extends StatelessWidget {
  const ProdDetailBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.grey.shade300,
      child: Padding(
        padding:  EdgeInsets.all(10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(text: "Price", fontName: "baloo", fontSize: 10.sp),
                Row(
                  children: [
                    MyText(
                      text: "\u{20B9} 100 ",
                      fontName: "balo",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    MyText(
                      text: "\u{20B9} 100 ",
                      fontName: "balo",
                      fontSize: 14.sp,
                      lineThrough: TextDecoration.lineThrough,
                    ),
                    MyText(
                      text: "0% off",
                      fontName: "balo",
                      fontSize: 14.sp,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),              ],
            ),
            MyButtons("Add To Cart", medicalBlue, click: (){
            }, fontSize: 14.sp, height: 40.h, width: 150.h,)
          ],
        ),
      ),
    );
  }
}
