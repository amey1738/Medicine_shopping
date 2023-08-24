import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/list_item_widgets/item_widgets/order_item_image_widget.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

import '../utils/color_constant.dart';

class OrderItem extends StatelessWidget {
  final int? count= 3;
  final VoidCallback click;
  const OrderItem({super.key, required this.click});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 10.h,right: 10.h,bottom: 10.h),
      child: InkWell(
        onTap: click,
        child: Container(
          decoration: BoxDecoration(
              color: greyBgColor,
              border: Border.all(
                color: darkGrey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(1))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: " #00022", fontName: "baloo", fontSize: 16.sp, fontWeight: FontWeight.bold,),

                      MyText(text: "Date : 01/01/1003", fontName: "baloo", fontSize: 14.sp)
                    ],
                  ),
                SizedBox(height: 5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "Total Items: 9", fontName: "baloo", fontSize: 12.sp,),

                    MyText(text: "Amount: \u{20B9}99", fontName: "baloo", fontSize: 14.sp)
                  ],
                ),
                SizedBox(height: 5.h,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 20 - 1,
                        child: ListView.builder(
                            itemCount: count!>3?3:count,
                            shrinkWrap: false,
                            padding: const EdgeInsets.only(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return const OrderItemImageWidget(imgLink: sourceImageLink,);
                            }),
                      ),
                    ),
                    MyText(text: "Status: Delivered", fontName: 'baloo', fontSize: 14.sp)
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
