import 'package:flutter/material.dart';
import 'package:test_shopping/list_item_widgets/item_product.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';

class AllProdScreen extends StatefulWidget {
  const AllProdScreen({super.key});

  @override
  State<AllProdScreen> createState() => _AllProdScreenState();
}

class _AllProdScreenState extends State<AllProdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: "Products"),

          ItemProduct(),

        ],
      ),
    );
  }
}
