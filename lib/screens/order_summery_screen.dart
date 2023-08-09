import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/list_item_widgets/item_order_summery_products.dart';
import 'package:test_shopping/screens/checkout_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';
import 'package:test_shopping/widgets/my_textfield.dart';

class OrderSummeryScreen extends StatefulWidget {
  const OrderSummeryScreen({Key? key}) : super(key: key);

  @override
  State<OrderSummeryScreen> createState() => _OrderSummeryScreen();
}

class _OrderSummeryScreen extends State<OrderSummeryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.only(top: 40.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: CustomAppBar(title: "Order Details")),
            Expanded(
              flex: 12,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: greyBgColor,
                      child: Padding(
                        padding: EdgeInsets.all(10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                                text: "Delivery Address",
                                fontName: "baloo",
                                fontSize: 14.sp),
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
                        padding: EdgeInsets.all(10.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: "Name",
                              fontName: "baloo",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            MyText(
                              text: "Address line 1",
                              fontName: "baloo",
                              fontSize: 14.sp,
                              color: grey,
                            ),
                            MyText(
                              text: "City / PIN code",
                              fontName: "baloo",
                              fontSize: 14.sp,
                              color: grey,
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            MyText(
                              text: "+91-0000000000",
                              fontName: "baloo",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                    MyTextField(
                        controller: specialInstructionController,
                        enabled: false,
                        hintText: "Special Instructions",
                        hintColor: darkGrey),
                    Container(
                      width: double.infinity,
                      color: darkGrey,
                      child: Padding(
                        padding: EdgeInsets.all(10.h),
                        child: MyText(
                          text: 'Items ',
                          fontName: 'baloo',
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    ListView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        // scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return OrderSummeryItems();
                        }),
                    Container(
                      color: greyBgColor,
                      child: Padding(
                        padding: EdgeInsets.all(10.h),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Item Total (MRP)",
                                  fontName: "baloo",
                                  fontSize: 14.sp,
                                  color: Colors.grey.shade800,
                                ),
                                MyText(
                                  text: "\u{20B9} 29.00",
                                  fontName: "baloo",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Price Discount",
                                  fontName: "baloo",
                                  fontSize: 14.sp,
                                  color: Colors.grey.shade800,
                                ),
                                MyText(
                                  text: "\u{20B9} 29.00",
                                  fontName: "baloo",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade500,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Shipping Fee",
                                  fontName: "baloo",
                                  fontSize: 14.sp,
                                  color: Colors.grey.shade800,
                                ),
                                MyText(
                                  text: "As per delivery address",
                                  fontName: "baloo",
                                  fontSize: 14.sp,
                                  color: Colors.grey.shade800,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade500,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Paid",
                                  fontName: "baloo",
                                  fontSize: 14.sp,
                                  color: Colors.grey.shade800,
                                ),
                                MyText(
                                  text: "\u{20B9} 29.00",
                                  fontName: "baloo",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.grey.shade300,
              child: Padding(
                padding: EdgeInsets.all(10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                            text: "Status:",
                            fontName: "baloo",
                            fontSize: 10.sp),
                        MyText(
                          text: "Delivered",
                          fontName: "baloo",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                    MyButtons(
                      "Help",
                      medicalBlue,
                      click: () {},
                      fontSize: 14.sp,
                      height: 40.h,
                      width: 100.h,
                    )
                  ],
                ),
              ),
            ),
            // OrderSummeryItems()
          ],
        ),
      ),
    );
  }
}
