import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/list_item_widgets/item_widgets/order_item_image_widget.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

import '../utils/color_constant.dart';

class OrderItem extends StatelessWidget {

  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: medicalBlue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(1))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "OrderID : #00022", fontName: "baloo", fontSize: 16.sp, fontWeight: FontWeight.bold,),

                    MyText(text: "Date : 01/01/1003", fontName: "baloo", fontSize: 14.sp)
                  ],
                ),
              SizedBox(height: 5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(text: "Total Items: 9", fontName: "baloo", fontSize: 12.sp,),

                  MyText(text: "Amount: 99", fontName: "baloo", fontSize: 14.sp)
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
                          itemCount: 3,
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
    );
  }
}
