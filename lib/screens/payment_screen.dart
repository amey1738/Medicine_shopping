import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/screens/checkout_screen.dart';
import 'package:test_shopping/screens/order_placed_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Column(
          children: [
            CustomAppBar(title: "Payment"),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              color: greyBgColor,
              child: Padding(
                padding: EdgeInsets.all(10.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: 'Select Payment Method',
                      fontName: 'baloo',
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 5,
              child: Column(
                children: [
                  RadioListTile(
                    title: Text(
                      "Cash on Delivery",
                      style: TextStyle(fontSize: 16),
                      softWrap: true,
                    ),
                    groupValue: "",
                    activeColor: Colors.green,
                    onChanged: (value) {},
                    value: 'one',
                  ),
                  RadioListTile(
                    title: Text(
                      "Pay using Razorpay",
                      style: TextStyle(fontSize: 16),
                      softWrap: true,
                    ),
                    groupValue: "",
                    activeColor: Colors.green,
                    onChanged: (value) {},
                    value: 'one',
                  ),

                ],
              ),
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
                    MyButtons("Pay", medicalBlue, click: (){
                      Get.to(OrderPlacedScreen());
                    }, fontSize: 14.sp, height: 40.h, width: 100.h,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
