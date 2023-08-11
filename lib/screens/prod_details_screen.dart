import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:test_shopping/ui_widgets/prod_details_basic_details_widget.dart';
import 'package:test_shopping/ui_widgets/prod_other_details_widget.dart';
import 'package:test_shopping/ui_widgets/prod_price_details_widget.dart';
import 'package:test_shopping/utils/circular_image.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/image_slideshow_widget.dart';
import 'package:test_shopping/widgets/item_customer_review.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';
import 'package:test_shopping/widgets/prod_detail_app_bar.dart';
import 'package:test_shopping/widgets/rating_info_widget.dart';

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
        child: Column(
          children: [
            const ProdDetailAppBar(title: "Product Details"),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageSlideShowWidget(),
                  ProdDetailsBasicDetailsWidget(),
                  SizedBox(
                    height: 5.h,
                  ),
                  ProdOtherDetailsWidget(),
                  SizedBox(
                    height: 5.h,
                  ),
                  ProdPriceDetailsWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h, right: 10.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Product Information",
                          fontName: "baloo",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: MyText(
                              text: text, fontName: "baloo", fontSize: 12.sp),
                        ),
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
                            text: "Manufacturing Information",
                            fontName: "baloo",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h, right: 10.h),
                          child: Row(
                            children: [
                              CircularImage(radius: 30.h),
                              SizedBox(
                                width: 10.h,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyText(
                                    text: 'Company Name',
                                    fontName: 'baloo',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  MyText(
                                    text: 'Mfg. Date',
                                    fontName: 'baloo',
                                    fontSize: 12.sp,
                                  ),
                                  MyText(
                                    text: 'Exp. Date',
                                    fontName: 'baloo',
                                    fontSize: 12.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    color: greyBgColor,
                    child: Padding(
                      padding: EdgeInsets.all(10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              MyText(
                                text: "Earliest Delivery by ",
                                fontName: "baloo",
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              MyText(
                                text: "Today",
                                fontName: "baloo",
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              MyText(
                                text: "Delivering to: ",
                                fontName: "baloo",
                                fontSize: 16.sp,
                                color: lightGreyColor,
                              ),
                              SizedBox(
                                width: 5.h,
                              ),
                              MyText(
                                text: "400605, Thane",
                                fontName: "baloo",
                                fontSize: 16.sp,
                              ),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(
                            height: 10.h,
                            thickness: 0.4.h,
                            color: lightGreyColor,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                color: lightGreyColor,
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              MyText(
                                  text: 'Cash on delivery available',
                                  fontName: 'baloo',
                                  fontSize: 14.sp)
                            ],
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.circle,
                                color: lightGreyColor,
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              MyText(
                                  text: 'Easy 7 days return available',
                                  fontName: 'baloo',
                                  fontSize: 14.sp)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    color: greyBgColor,
                    child: Padding(
                      padding: EdgeInsets.all(10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: 'Customer Reviews',
                            fontName: 'baloo',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          RatingInfoWidget(),
                          SizedBox(height: 10.h,),
                          MyText(
                            text: 'Top Reviews',
                            fontName: 'baloo',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(height: 10.h,),
                          ListView.builder(
                              itemCount: 3,
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              // scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return ItemCustomerReview();
                              }),
                          SizedBox(
                            height: 10.h,
                          ),
                          MyButtons('See All 223 Reviews', medicalBlue, click: (){}, fontSize: 14.sp, height: 40.h,),
                          SizedBox(height: 10.h,),


                        ],
                      ),
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
