import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/list_item_widgets/item_profile_menu.dart';
import 'package:test_shopping/sensor_screens/braking_detector.dart';
import 'package:test_shopping/sensor_screens/sharp_turn_detector.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/my_text.dart';

class BottomNavMedicalPlanScreen extends StatefulWidget {
  const BottomNavMedicalPlanScreen({super.key});

  @override
  State<BottomNavMedicalPlanScreen> createState() => _BottomNavMedicalPlanScreenState();
}

class _BottomNavMedicalPlanScreenState extends State<BottomNavMedicalPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Medical Plan"),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: (){
                Get.to(const BrakingDetectorScreen());
              },
                child: ItemProfileMenu(name: 'harsh braking detector', click: () {  },)),

            InkWell(
                onTap: (){
                  Get.to(const SharpTurnDetectorScreen());
                },
                child: ItemProfileMenu(name: 'sharp turn detector', click: () {  },)),
            ],
        ),
      ),
    );
  }
}
