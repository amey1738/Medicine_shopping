import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/list_item_widgets/item_brand.dart';
import 'package:test_shopping/list_item_widgets/item_category_widget.dart';
import 'package:test_shopping/list_item_widgets/item_grid_product.dart';
import 'package:test_shopping/screens/cart_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/auto_slider_widget.dart';
import 'package:test_shopping/widgets/my_text.dart';

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
        padding: const EdgeInsets.only(top: 40),
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
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: 'Title Here',
                fontName: 'baloo',
                fontSize: 16.sp,
              ),
              InkWell(
                onTap: () {
                  Get.to(CartScreen());
                },
                child: Icon(Icons.shopping_cart),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        searchBox(),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 150,
          color: greyBgColor,
          child: Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
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
        ),
        SizedBox(
          height: 10.h,
        ),

        const AutoSliderWidget(),
        SizedBox(
          height: 5.h,
        ),
        Container(
          color: greyBgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.h),
                child: MyText(
                  text: 'Top Sellers',
                  fontName: 'baloo',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.37,
                color: greyBgColor,
                child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return const ItemGridProduct();
                    }),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),

        Container(
          width: double.infinity,
          color: greyBgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.h),
                child: MyText(
                  text: 'Featured Brands',
                  fontName: 'baloo',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h,),
              GridView.builder(
                shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemBrand();
                  }
              )

            ],
          ),
        ),

        SizedBox(
          height: 10.h,
        ),
        Container(
          color: greyBgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.h),
                child: MyText(
                  text: 'New Arrivals',
                  fontName: 'baloo',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.37,
                color: greyBgColor,
                child: ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return const ItemGridProduct();
                    }),
              ),
            ],
          ),
        ),

        // ItemProduct(),
      ],
    );
  }

  Widget searchBox() {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 10.h, right: 10.h),
        child: SizedBox(
          height: 45,
          width: double.infinity,
          child: TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xfff1f1f1),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide.none,
              ),
              hintText: "Search for Items",
              prefixIcon: const Icon(Icons.search),
              prefixIconColor: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
