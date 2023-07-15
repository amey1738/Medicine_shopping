import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/list_item_widgets/item_category_widget.dart';
import 'package:test_shopping/list_item_widgets/item_product.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/auto_slider_widget.dart';
import 'package:test_shopping/widgets/main_app_bar.dart';
import 'package:test_shopping/widgets/my_text_with_shimmer.dart';


String currentLocation = "Navi Mumbai";

class BottomNavHomeScreen extends StatefulWidget {
  const BottomNavHomeScreen({super.key});

  @override
  State<BottomNavHomeScreen> createState() => _BottomNavHomeScreenState();
}

class _BottomNavHomeScreenState extends State<BottomNavHomeScreen> {

  bool? isWhisListSelected = false;
  int isSwitchAnimal = 0;
  String? currentAddress = "Fetching current address";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // switchLayout(),
            Expanded(
              child: SingleChildScrollView(
                child: content(),
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){

                },
                child: Icon(Icons.person),
              ),
              InkWell(
                onTap: (){

                },
                child: Icon(Icons.shopping_cart),
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        SizedBox(
          height: 130,
          child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const CategoryItemWidget(
                  imageLink: sourceImageLink,
                  title: 'Dog',
                );
              }),
        ),

        AutoSliderWidget()



        // ItemProduct(),

      ],
    );
  }

}
