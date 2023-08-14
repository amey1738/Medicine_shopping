import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ProdDetailsShippingInfoWidget extends StatelessWidget {
  const ProdDetailsShippingInfoWidget({super.key});

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
            Row(
              children: [
                MyText(
                  text: "Earliest Delivery by ",
                  fontName: "baloo",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 5.h,
                ),
                MyText(
                  text: "Today",
                  fontName: "baloo",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              children: [
                MyText(
                  text: "Delivering to: ",
                  fontName: "baloo",
                  fontSize: 16.sp,
                  color: lightGreyColor,
                ),
                SizedBox(
                  width: 5.h,
                ),
                MyText(
                  text: "400605, Thane",
                  fontName: "baloo",
                  fontSize: 16.sp,
                ),
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              height: 10.h,
              thickness: 0.4.h,
              color: lightGreyColor,
            ),
            Row(
              children: [
                const Icon(
                  Icons.circle,
                  color: lightGreyColor,
                ),
                SizedBox(
                  width: 10.h,
                ),
                MyText(
                    text: 'Cash on delivery available',
                    fontName: 'baloo',
                    fontSize: 14.sp)
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                const Icon(
                  Icons.circle,
                  color: lightGreyColor,
                ),
                SizedBox(
                  width: 10.h,
                ),
                MyText(
                    text: 'Easy 7 days return available',
                    fontName: 'baloo',
                    fontSize: 14.sp)
              ],
            )
          ],
        ),
      ),
    );
  }
}
