import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/bottom_navigation/bottom_navigation_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: medicalBlue),
            color: medicalBlue,
            foregroundColor: medicalBlue,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: medicalBlue,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
            ),
          ),
      ),
      title: 'Test Shopping',
      home:
      CustomBottomNav(),

    );
  }
}
