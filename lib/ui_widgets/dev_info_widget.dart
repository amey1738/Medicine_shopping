import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';
import 'package:badges/badges.dart'as badges;

class DevInfoWidget extends StatelessWidget {
  const DevInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      // color: greyBgColor,
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              text: 'Making Ecommerce',
              fontName: 'baloo',
              fontSize: 12.sp,
              color: lightGreyColor,
            ),
            SizedBox(height: 5.h,),
            MyText(
              text: 'Understandable, Accessible & Affordable',
              fontName: 'baloo',
              fontSize: 16.sp,
              color: lightGreyColor,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 20.h,),
            MyText(
              text: 'Made with <3 by Amey Palav',
              fontName: 'baloo',
              fontSize: 12.sp,
              color: lightGreyColor,
            ),


          ],
        ),
      ),
    );
  }


  Widget addBadgeCount(
      {required Widget widget,
        required int badgeCount,
        Color badgeColor = Colors.red,
        badges.BadgeShape badgeShape = badges.BadgeShape.circle}) {
    return badges.Badge(
      showBadge: badgeCount != 0,
      badgeContent: Text(
        badgeCount.toString(),
        style: TextStyle(color: Colors.white),
      ),
      badgeStyle: badges.BadgeStyle(badgeColor: badgeColor, shape: badgeShape),
      child: widget,
    );
  }

  Widget addBadgeIcon(
      {required Widget widget,
        required Icon? badgeIcon,
        Color badgeColor = Colors.green,
        badges.BadgeShape badgeShape = badges.BadgeShape.circle}) {
    return badges.Badge(
      showBadge: badgeIcon != null,
      position: badges.BadgePosition.bottomStart(bottom: -20, start: -12),
      badgeContent: badgeIcon,
      badgeStyle: badges.BadgeStyle(badgeColor: badgeColor, shape: badgeShape),
      child: widget,
    );
  }

}
