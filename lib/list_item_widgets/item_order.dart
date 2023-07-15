import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        MyText(text: "OrderID", fontName: "baloo", fontSize: 16.sp, fontWeight: FontWeight.bold,),
                      ],
                    ),

                    Column(
                      children: [
                        MyText(text: "Date : 01/01/1003", fontName: "baloo", fontSize: 14.sp),
                      ],
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
