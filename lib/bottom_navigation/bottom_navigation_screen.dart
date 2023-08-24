import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:test_shopping/bottom_navigation/bottom_navigation_screens/bottom_nav_home_screen.dart';
import 'package:test_shopping/bottom_navigation/bottom_navigation_screens/bottom_nav_medical_plan_screen.dart';
import 'package:test_shopping/bottom_navigation/bottom_navigation_screens/bottom_nav_my_orders_screen.dart';
import 'package:test_shopping/bottom_navigation/bottom_navigation_screens/bottom_nav_profile_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/exitShowDialog.dart';
import 'package:test_shopping/widgets/my_text.dart';


class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  UserDashBoardScreenState createState() => UserDashBoardScreenState();
}

class UserDashBoardScreenState extends State<CustomBottomNav> {

  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    getConnectivity();
  }

  int currentPage = 0;
  List<Widget> page = [
    const BottomNavHomeScreen(),
    BottomNavMedicalPlanScreen(),
    BottomNavMyOrdersScreen(),
    BottomNavMyProfileScreen(),
  ];

  List<BottomNavigationBarItem> icons =  const[
    BottomNavigationBarItem(activeIcon: Icon(CupertinoIcons.house_fill),icon: Icon(CupertinoIcons.house), label: 'Home'),
    BottomNavigationBarItem(activeIcon: Icon(CupertinoIcons.heart_circle_fill),icon: Icon(CupertinoIcons.heart_circle), label: 'Medical Plabn'),
    BottomNavigationBarItem(activeIcon: Icon(CupertinoIcons.folder),icon: Icon(CupertinoIcons.folder_fill), label: 'My Orders'),
    BottomNavigationBarItem(activeIcon: Icon(CupertinoIcons.person_alt),icon: Icon(CupertinoIcons.person), label: 'My Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => exitShowDialog(context, 'Confirmation', 'Are you sure you want to exit?', () {
        Get.back();
      }, () {exit(0);}),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: page[currentPage],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: medicalBlue,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: currentPage,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          items: icons,
          backgroundColor: whiteColor,
          selectedLabelStyle: const TextStyle(fontFamily: 'baloo'),
          unselectedLabelStyle: const TextStyle(fontFamily: 'baloo'),
          onTap: (value) {
            currentPage = value;
            setState(() {});
          },
        ),
      ),
    );
  }

  getConnectivity() =>
      subscription = Connectivity().onConnectivityChanged.listen(
            (ConnectivityResult result) async {
          isDeviceConnected = await InternetConnectionChecker().hasConnection;
          if (!isDeviceConnected && isAlertSet == false) {
            showDialogBox();
            setState(() => isAlertSet = true);
          }
        },
      );

  //Check Internet Dialog
  showDialogBox() => showCupertinoDialog<String>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: const Text('No Connection'),
      content: const Text('Please check your internet connectivity'),
      actions: <Widget>[
        TextButton(
          onPressed: () async {
            Navigator.pop(context, 'Cancel');
            setState(() => isAlertSet = false);
            isDeviceConnected =
            await InternetConnectionChecker().hasConnection;
            if (!isDeviceConnected && isAlertSet == false) {
              showDialogBox();
              setState(() => isAlertSet = true);
            }
          },
          child: const Text('OK'),
        ),
      ],
    ),
  );

}
