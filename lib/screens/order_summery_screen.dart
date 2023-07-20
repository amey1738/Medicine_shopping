import 'package:flutter/material.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';

class OrderSummeryScreen extends StatefulWidget {
  const OrderSummeryScreen({Key? key}) : super(key: key);

  @override
  State<OrderSummeryScreen> createState() => _OrderSummeryScreen();
}

class _OrderSummeryScreen extends State<OrderSummeryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          CustomAppBar(title: "Order Summery")
        ],
      ),
    );
  }
}
