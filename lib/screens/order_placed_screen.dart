import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/bottom_navigation/bottom_navigation_screen.dart';
import 'package:test_shopping/screens/home_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/my_buttons.dart';

class OrderPlacedScreen extends StatefulWidget {
  const OrderPlacedScreen({super.key});

  @override
  State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(
            padding:  EdgeInsets.all(10.h),
            child: MyButtons("Continue Shopping", medicalBlue, click: (){
              Get.to(CustomBottomNav());
            }, fontSize: 14.sp, height: 40.h,),
          )
          ],
        ),
      ),
    );
  }
}
