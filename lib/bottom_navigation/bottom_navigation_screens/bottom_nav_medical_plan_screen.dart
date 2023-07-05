import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Medical Plan"),

          ],
      ),
    );
  }
}
