import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/list_item_widgets/item_widgets/add_to_cart_plus_minus_btn.dart';
import 'package:test_shopping/screens/prod_details_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ItemGridProduct extends StatelessWidget {
  const ItemGridProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
      ),
      child: InkWell(
        onTap: (){
          Get.to(ProductDetailsScreen());
        },
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(
                    sourceImageLink,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 70.h,
                    height: 22.h,
                    color: Colors.amberAccent,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(5.h),
                        child: MyText(
                            text: 'Best Seller',
                            fontName: 'baloo',
                            fontSize: 12.sp),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              MyText(
                text: 'Product Name',
                fontName: 'baloo',
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 4.h,
              ),
              MyText(
                text: 'Product Description',
                fontName: 'baloo',
                fontSize: 12.sp,
                color: lightGreyColor,
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 16.h,
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    updateOnDrag: false,
                    ignoreGestures: true,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  MyText(
                    text: "4.0",
                    fontName: "baloo",
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 4.h,
                  ),
                  MyText(
                    text: "(10 Reviews)",
                    fontName: "baloo",
                    fontSize: 12.sp,
                    color: lightGreyColor,
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  MyText(
                    text: 'Delivery By ',
                    fontName: 'baloo',
                    fontSize: 12.sp,
                    color: lightGreyColor,
                  ),
                  MyText(
                    text: 'Today ',
                    fontName: 'baloo',
                    fontSize: 12.sp,
                    color: lightGreyColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  MyText(
                    text: "\u{20B9} 100 ",
                    fontName: "balo",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  MyText(
                    text: "\u{20B9} 100 ",
                    fontName: "balo",
                    fontSize: 14.sp,
                    lineThrough: TextDecoration.lineThrough,
                  ),
                  SizedBox(
                    width: 4.h,
                  ),
                  MyText(
                    text: "0% off",
                    fontName: "balo",
                    fontSize: 14.sp,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
              SizedBox(height: 4.h,),
              Container(
                height: 30.h,
                decoration: const BoxDecoration(
                    color: medicalBlue,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Center(
                    child: MyText(
                        text: 'Add to cart',
                        fontName: 'baloo',
                        fontSize: 14.sp,
                        color: whiteColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
