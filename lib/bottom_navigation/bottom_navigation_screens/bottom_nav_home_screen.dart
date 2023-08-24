import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/list_item_widgets/item_brand.dart';
import 'package:test_shopping/list_item_widgets/item_category_widget.dart';
import 'package:test_shopping/list_item_widgets/item_grid_product.dart';
import 'package:test_shopping/screens/all_prod_screen.dart';
import 'package:test_shopping/screens/cart_screen.dart';
import 'package:test_shopping/ui_widgets/dev_info_widget.dart';
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
                child: Icon(Icons.shopping_cart_outlined),
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
        Padding(
          padding: EdgeInsets.only(left: 10.h, top: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: 'Greetings!',
                fontName: 'baloo',
                fontSize: 14.sp,
                color: Colors.blueAccent,
              ),
              MyText(
                text: 'Welcome notice here',
                fontName: 'baloo',
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.16,
          // color: greyBgColor,
          child: Padding(
            padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
            child: ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 5.h, right: 10.h),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return const CategoryItemWidget(
                    imageLink: sourceImageLink,
                    title: 'Category',
                  );
                }),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),

        Padding(
          padding:  EdgeInsets.all(10.h),
          child: const AutoSliderWidget(),
        ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Top Sellers',
                      fontName: 'baloo',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),

                    seeAll(),

                  ],
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

        Padding(
          padding:  EdgeInsets.all(10.h),
          child: const AutoSliderWidget(),
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
              SizedBox(
                height: 10.h,
              ),
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
                  })
            ],
          ),
        ),

        Padding(
          padding:  EdgeInsets.all(10.h),
          child: const AutoSliderWidget(),
        ),

        Container(
          color: greyBgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'New Arrivals',
                      fontName: 'baloo',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    seeAll(),
                  ],
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
        SizedBox(height: 20.h,),
        DevInfoWidget(),
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

  Widget seeAll(){
    return  InkWell(
      onTap: () {
        Get.to(AllProdScreen());
      },
      child: Row(
        children: [
          MyText(
            text: 'See all ',
            fontName: 'baloo',
            fontSize: 14.sp,
            color: Colors.blue,
          ),
          Icon(Icons.arrow_forward_ios_outlined, color: Colors.blue, size: 12.h,)
        ],
      ),
    );
  }
}
