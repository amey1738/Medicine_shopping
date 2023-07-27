import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

class OrderSummeryItems extends StatelessWidget {
  const OrderSummeryItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: greyBgColor,
        child: Padding(
          padding:  EdgeInsets.all(10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    sourceImageLink,
                    height: 60.h,
                    width: 60.h,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(text: "Product Name", fontName: 'baloo', fontSize: 14.sp),
                      MyText(text: "Product Desc", fontName: 'baloo', fontSize: 12.sp, color: grey,),

                    ],
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyText(text: "\u{20B9} 00", fontName: 'baloo', fontSize: 16.sp),
                  MyText(text: "\u{20B9} 00", fontName: 'baloo', fontSize: 14.sp, color: grey, lineThrough: TextDecoration.lineThrough,),

                ],
              )
            ],
          ),
        )
    );
  }
}
