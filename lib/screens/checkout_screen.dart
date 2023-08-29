import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/list_item_widgets/item_order_summery_products.dart';
import 'package:test_shopping/screens/payment_screen.dart';
import 'package:test_shopping/screens/select_address_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(title: "Checkout"),
            Expanded(
              flex: 12,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.h),
                      child: MyText(
                          text: "Order Summery",
                          fontName: "baloo",
                          fontSize: 16.sp),
                    ),
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
                            InkWell(
                                onTap: () {
                                  Get.to(SelectAddressScreen());
                                },
                                child: MyText(
                                  text: "Change",
                                  fontName: "baloo",
                                  fontSize: 12.sp,
                                  lineThrough: TextDecoration.underline,
                                )),
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
                        hintText: "Special Instructions",
                        hintColor: darkGrey),
                    Padding(
                      padding: EdgeInsets.all(10.h),
                      child: MyText(
                          text: "Your Items",
                          fontName: "baloo",
                          fontSize: 16.sp),
                    ),
                    Container(
                      width: double.infinity,
                      color: darkGrey,
                      child: Padding(
                        padding: EdgeInsets.all(10.h),
                        child: MyText(
                          text: 'Arriving by ',
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
                                  text: "To be paid",
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
                            text: "Total Payable",
                            fontName: "baloo",
                            fontSize: 10.sp),
                        MyText(
                          text: "29.00",
                          fontName: "baloo",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                    MyButtons(
                      "Proceed",
                      medicalBlue,
                      click: () {
                        Get.to(PaymentScreen());
                      },
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
