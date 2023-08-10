import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class SortOptionsWidget extends StatelessWidget {
  const SortOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(

        color: greyBgColor,
        child: Padding(
          padding: EdgeInsets.all(10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText(
                text: 'Sort By',
                fontName: 'baloo',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10.h,
              ),
              RadioListTile(
                  value: "Relevance",
                  groupValue: 1,
                  onChanged: (value) {},
                  title: MyText(
                      text: 'Relevance', fontName: 'baloo', fontSize: 14.sp)),
              RadioListTile(
                  value: "Average customer rating",
                  groupValue: 1,
                  onChanged: (value) {},
                  title: MyText(
                      text: 'Average customer rating', fontName: 'baloo', fontSize: 14.sp)),
              RadioListTile(
                  value: "Price low to high",
                  groupValue: 1,
                  onChanged: (value) {},
                  title: MyText(
                      text: 'Price low to high', fontName: 'baloo', fontSize: 14.sp)),
              RadioListTile(
                  value: "Price high to low",
                  groupValue: 1,
                  onChanged: (value) {

                  },
                  title: MyText(
                      text: 'Price high to low', fontName: 'baloo', fontSize: 14.sp)),
              RadioListTile(
                  value: "Discount",
                  groupValue: 1,
                  onChanged: (value) {

                  },
                  title: MyText(
                      text: 'Discount', fontName: 'baloo', fontSize: 14.sp)),

            ],
          ),
        ),
      ),
    );
  }
}
