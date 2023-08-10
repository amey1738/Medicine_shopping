import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/list_item_widgets/item_widgets/add_to_cart_plus_minus_btn.dart';
import 'package:test_shopping/screens/prod_details_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: InkWell(
        onTap: () {
          Get.to(
            ProductDetailsScreen()
          );
        },
        child: Container(
          // decoration: BoxDecoration(
          //     border: Border.all(
          //       color: medicalBlue,
          //     ),
          //     borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Divider(thickness: 1, color: medicalBlue,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      sourceImageLink,
                      height: 100.h,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Prod Name",
                          fontName: "balo",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        MyText(
                          text: "Prod desc",
                          fontName: "balo",
                          fontSize: 12,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            MyText(
                              text: "\u{20B9} 100 ",
                              fontName: "balo",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            MyText(
                              text: "\u{20B9} 100 ",
                              fontName: "balo",
                              fontSize: 14.sp,
                              lineThrough: TextDecoration.lineThrough,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        // MyButtons(
                        //   "Add To Cart",
                        //   medicalBlue,
                        //   click: () {},
                        //   fontSize: 14,
                        //   height: 30,
                        //   width: 100,
                        // )
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(text: "(10 Reviews)", fontName: "baloo", fontSize: 12.sp),
                                RatingBar.builder(
                                  itemSize: 16.h,
                                  initialRating: 0,
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
                              ],
                            ),
                            SizedBox(width: 30.h,),
                            AddToCartPlusMinusBtn(),

                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Divider(thickness: 1, color: medicalBlue,height: 10.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
