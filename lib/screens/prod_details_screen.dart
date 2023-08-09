import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:test_shopping/ui_widgets/prod_details_basic_details_widget.dart';
import 'package:test_shopping/ui_widgets/prod_other_details_widget.dart';
import 'package:test_shopping/ui_widgets/prod_price_details_widget.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/image_slideshow_widget.dart';
import 'package:test_shopping/widgets/my_text.dart';
import 'package:test_shopping/widgets/prod_detail_app_bar.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  String text = loremIpsum(words: 60, paragraphs: 3, initWithLorem: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.only(top: 40.h),
        child:  Column(
          children: [
            ProdDetailAppBar(title: "Product Details"),
            Expanded(child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageSlideShowWidget(),

                  ProdDetailsBasicDetailsWidget(),
                  SizedBox(height: 5.h,),
                  ProdOtherDetailsWidget(),
                  SizedBox(height: 5.h,),
                  ProdPriceDetailsWidget(),
                  SizedBox(height: 10.h,),
                  Padding(
                    padding:  EdgeInsets.only(left: 10.h,right: 10.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(text: "Product Information", fontName: "baloo", fontSize: 16.sp, fontWeight: FontWeight.bold,),
                        SizedBox(height: 5.h,),
                        Padding(
                          padding:  EdgeInsets.only(bottom: 10.h),
                          child: MyText(text: text, fontName: "baloo", fontSize: 12.sp),
                        ),
                        

                      ],
                    ),
                  )

                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
