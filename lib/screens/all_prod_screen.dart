import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/list_item_widgets/item_product.dart';
import 'package:test_shopping/utils/color_constant.dart';
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
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.only(top: 40.h),
        child: Column(
          children: [
            CustomAppBar(title: "Products"),



            SizedBox(height: 10.h,),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.only(left: 10.h,right: 10.h),
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemProduct();

                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
