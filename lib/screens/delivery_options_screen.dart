import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/screens/checkout_screen.dart';
import 'package:test_shopping/screens/payment_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';

class DeliveryOptionsScreen extends StatefulWidget {
  const DeliveryOptionsScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryOptionsScreen> createState() => _DeliveryOptionsScreenState();
}

class _DeliveryOptionsScreenState extends State<DeliveryOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.only(top: 40.h),
        child: Column(
          children: [
            CustomAppBar(title: "Delivery Options"),
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
                      text: 'Choose a delivery speed',
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
                      "Between 29 April - 2 May",
                      style: TextStyle(fontSize: 16),
                      softWrap: true,
                    ),
                    groupValue: 2,
                    activeColor: medicalBlue,
                    onChanged: (value) {
                      setState(() {

                      });
                    },
                    value: 1,
                  ),
                  RadioListTile(
                    title: Text(
                      "Between 29 April - 2 May",
                      style: TextStyle(fontSize: 16),
                      softWrap: true,
                    ),
                    groupValue: 2,
                    activeColor: medicalBlue,
                    onChanged: (value) {
                      setState(() {

                      });
                    },
                    value: 2,
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
                    MyButtons("Continue", medicalBlue, click: (){
                      Get.to(CheckoutScreen());
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
