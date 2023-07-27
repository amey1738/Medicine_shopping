import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/list_item_widgets/item_order_summery_products.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/my_text.dart';
import 'package:test_shopping/widgets/my_textfield.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

final specialInstructionController = TextEditingController();

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding:  EdgeInsets.only(top: 40.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(title: "Checkout"),
            Padding(
              padding:  EdgeInsets.all(10.h),
              child: MyText(text: "Order Summery", fontName: "baloo", fontSize: 16.sp),
            ),
            Container(
              color: greyBgColor,
              child: Padding(
                padding:  EdgeInsets.all(10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "Delivery Address", fontName: "baloo", fontSize: 14.sp),
                    MyText(text: "Change", fontName: "baloo", fontSize: 12.sp, lineThrough: TextDecoration.underline,),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: double.infinity,
              color: greyBgColor,
              child: Padding(
                padding:  EdgeInsets.all(10.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(text: "Name", fontName: "baloo", fontSize: 16.sp, fontWeight: FontWeight.bold,),
                    MyText(text: "Address line 1", fontName: "baloo", fontSize: 14.sp, color: grey,),
                    MyText(text: "City / PIN code", fontName: "baloo", fontSize: 14.sp, color: grey,),
                    SizedBox(height: 5.h,),
                    MyText(text: "+91-0000000000", fontName: "baloo", fontSize: 16.sp, fontWeight: FontWeight.bold,),
                  ],
                ),
              ),
            ),

            Padding(
              padding:  EdgeInsets.all(10.h),
              child: MyTextField(controller: specialInstructionController, hintText: "Special Instructions", hintColor: darkGrey),
            ),
            Padding(
              padding:  EdgeInsets.all(10.h),
              child: MyText(text: "Your Items", fontName: "baloo", fontSize: 16.sp),
            ),

            Container(
              width: double.infinity,
              color: darkGrey,
              child: Padding(
                padding:  EdgeInsets.all(10.h),
                child: MyText(text: 'Arriving by ', fontName: 'baloo', fontSize: 14.sp, ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return OrderSummeryItems();

                  }),
            ),
            // OrderSummeryItems()


          ],
        ),
      ),
    );
  }
}
