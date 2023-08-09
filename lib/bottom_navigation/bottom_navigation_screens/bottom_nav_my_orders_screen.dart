import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/list_item_widgets/item_order.dart';
import 'package:test_shopping/list_item_widgets/item_widgets/order_item_image_widget.dart';
import 'package:test_shopping/screens/order_summery_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';

class BottomNavMyOrdersScreen extends StatefulWidget {
  const BottomNavMyOrdersScreen({super.key});

  @override
  State<BottomNavMyOrdersScreen> createState() => _BottomNavMyOrdersScreenState();
}

class _BottomNavMyOrdersScreenState extends State<BottomNavMyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 40.h),
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Column(
          children: [
            CustomAppBar(title: 'Orders'),
            SizedBox(height: 10.h,),
            OrderItem(click: () {
              Get.to(OrderSummeryScreen());
            },),


          ],
        ),
      ),
    );
  }
}
