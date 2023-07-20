import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/list_item_widgets/item_address.dart';
import 'package:test_shopping/screens/add_new_address_screen.dart';
import 'package:test_shopping/screens/delivery_options_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/my_text.dart';

class SelectAddressScreen extends StatefulWidget {
  const SelectAddressScreen({Key? key}) : super(key: key);

  @override
  State<SelectAddressScreen> createState() => _SelectAddressScreenState();
}

class _SelectAddressScreenState extends State<SelectAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: new FloatingActionButton(

        onPressed: () {
          Get.to(DeliveryOptionsScreen());
        },
        child: MyText(text: "Done", fontName: "baloo", fontSize: 14.sp),
      ),

      body: Padding(
        padding: EdgeInsets.only(top: 40.h),
        child: Column(
          children: [
            CustomAppBar(title: "Select Address"),
            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){
                Get.to(AddNewAddressScreen());
              },
              child: Container(
                width: double.infinity,
                color: greyBgColor,
                child: Padding(
                  padding:  EdgeInsets.all(10.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(text: 'ADD A NEW ADDRESS', fontName: 'baloo', fontSize: 12.sp,fontWeight: FontWeight.bold,),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return AddressItem();

                  }),
            ),

          ],
        ),
      ),
    );
  }
}