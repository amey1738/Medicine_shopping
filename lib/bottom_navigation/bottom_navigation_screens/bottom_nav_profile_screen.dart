import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';

class BottomNavMyProfileScreen extends StatefulWidget {
  const BottomNavMyProfileScreen({super.key});

  @override
  State<BottomNavMyProfileScreen> createState() => _BottomNavMyProfileScreenState();
}

class _BottomNavMyProfileScreenState extends State<BottomNavMyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding:  EdgeInsets.only(top: 40.h),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
