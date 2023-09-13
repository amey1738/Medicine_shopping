import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ItemProfileMenu extends StatelessWidget {
  final String name;
  final VoidCallback click;
  const ItemProfileMenu({super.key, required this.name, required this.click});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h,right: 10.h),
      child: Container(
        color: greyBgColor,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(text: name, fontName: 'baloo', fontSize: 14.sp),
                  Icon(Icons.arrow_forward_ios, color: darkGrey,)
                ],
              ),
            ),
            Divider(height: 1.h,thickness: 1.h, color: darkGrey,)
          ],
        ),
      ),
    );
  }
}
