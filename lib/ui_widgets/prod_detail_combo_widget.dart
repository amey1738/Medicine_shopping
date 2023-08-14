import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/list_item_widgets/item_combo_product.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ProdDetailComboWidget extends StatelessWidget {
  const ProdDetailComboWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: greyBgColor,
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: 'Frequently Bought Together',
              fontName: 'baloo',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10.h,
            ),
            ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return ItemComboProduct();
                }),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Total for 2 items: ",
                      fontName: "baloo",
                      fontSize: 12.sp,
                      color: Colors.grey.shade600,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        MyText(
                          text: "\u{20B9} 100 ",
                          fontName: "balo",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        MyText(
                          text: "\u{20B9} 100 ",
                          fontName: "balo",
                          fontSize: 14.sp,
                          lineThrough: TextDecoration.lineThrough,
                        ),
                        MyText(
                          text: "0% off",
                          fontName: "balo",
                          fontSize: 14.sp,
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                  ],
                ),
                MyButtons(
                  'Add both to cart',
                  medicalBlue,
                  click: () {},
                  fontSize: 14.sp,
                  height: 40.h,
                  width: 150.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
