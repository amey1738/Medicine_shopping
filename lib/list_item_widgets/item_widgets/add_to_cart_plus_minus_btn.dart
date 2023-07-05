
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/controller/add_to_cart_increase_controller.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class AddToCartPlusMinusBtn extends StatefulWidget {

  const AddToCartPlusMinusBtn({super.key});

  @override
  State<AddToCartPlusMinusBtn> createState() => _AddToCartPlusMinusBtnState();
}

class _AddToCartPlusMinusBtnState extends State<AddToCartPlusMinusBtn> {

  final controller = Get.put(AddToCartIncrease());

  @override
  Widget build(BuildContext context) {

    return Obx(() {
      return Container(
        // margin: EdgeInsets.only(
        //     top: 10.h, bottom: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Visibility(
                  visible: controller.count.toString() == "0" ? true : false,
                  child: InkWell(
                    onTap: () {
                      controller.increment();
                    },
                    child: Container(
                      height: 35  .h,
                      width: 100.h,
                      decoration: const BoxDecoration(
                          color: medicalBlue,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Center(child: MyText(text: 'Add to cart',
                          fontName: 'baloo',
                          fontSize: 14.sp,
                          color: whiteColor)),
                    ),
                  ),
                ),
                Visibility(
                  visible: controller.count.toString() == "0" ? false : true,
                  child: Row(
                    children: [
                      Container(
                        height: 35.h,
                        width: 35.h,
                        decoration: const BoxDecoration(
                            color: medicalBlue,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: IconButton(
                          icon: const Icon(CupertinoIcons.minus),
                          onPressed: () {
                            controller.decrement();
                          },
                          iconSize: 15.h,
                          color: whiteColor,
                        ),
                      ),
                      MyText(text: controller.count.toString(),
                          fontName: 'baloo',
                          fontSize: 16,
                          paddingRight: 10,
                          paddingLeft: 10,
                          fontWeight: FontWeight.w600),
                      Container(
                        height: 35.h,
                        width: 35.h,
                        decoration: const BoxDecoration(
                            color: medicalBlue,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: IconButton(
                          icon: const Icon(CupertinoIcons.plus),
                          onPressed: () {
                            controller.increment();
                          },
                          iconSize: 15.h,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      );
    });
  }
}
