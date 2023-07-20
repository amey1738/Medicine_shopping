import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/screens/select_address_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';

class CartDetailsWidget extends StatefulWidget {
  const CartDetailsWidget({super.key});

  @override
  State<CartDetailsWidget> createState() => _CartDetailsWidgetState();
}

class _CartDetailsWidgetState extends State<CartDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          color: Colors.grey.shade300,
          child: Padding(
            padding:  EdgeInsets.all(10.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "Item Total (MRP)", fontName: "baloo", fontSize: 14.sp, color: Colors.grey.shade800,),
                    MyText(text: "29.00", fontName: "baloo", fontSize: 14.sp, fontWeight: FontWeight.bold,)
                  ],
                ),
                SizedBox(height: 5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "Price Discount", fontName: "baloo", fontSize: 14.sp, color: Colors.grey.shade800,),
                    MyText(text: "29.00", fontName: "baloo", fontSize: 14.sp, fontWeight: FontWeight.bold,)
                  ],
                ),
                Divider(thickness: 1,color: Colors.grey.shade500,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "Shipping Fee", fontName: "baloo", fontSize: 14.sp, color: Colors.grey.shade800,),
                    MyText(text: "As per delivery address", fontName: "baloo", fontSize: 14.sp,color: Colors.grey.shade800,)
                  ],
                ),
                Divider(thickness: 1,color: Colors.grey.shade500,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "To be paid", fontName: "baloo", fontSize: 14.sp, color: Colors.grey.shade800,),
                    MyText(text: "29.00", fontName: "baloo", fontSize: 14.sp, fontWeight: FontWeight.bold,)
                  ],
                ),
                Divider(thickness: 1,color: Colors.grey.shade500,),
              ],
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.all(10.h),
          child: MyText(text: "Terms & Conditions.", fontName: "baloo", fontSize: 12.sp, color: medicalBlue, lineThrough: TextDecoration.underline,),
        ),
        Container(
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
                    MyText(text: "Total Payable", fontName: "baloo", fontSize: 10.sp),
                    MyText(text: "29.00", fontName: "baloo", fontSize: 18.sp, fontWeight: FontWeight.bold,)
                  ],
                ),
                MyButtons("Checkout", medicalBlue, click: (){
                Get.to(SelectAddressScreen());
                }, fontSize: 14.sp, height: 40.h, width: 100.h,)
              ],
            ),
          ),
        ),


      ],
    );
  }
}
