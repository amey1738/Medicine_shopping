import 'package:flutter/material.dart';
import 'package:test_shopping/list_item_widgets/item_product.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: "Home"),

        ],
      ),
    );
  }
}
