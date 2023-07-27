import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Padding(
        padding: EdgeInsets.only(left: 10.h,right: 10.h,top: 5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Divider(thickness: 1, color: medicalBlue,),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      sourceImageLink,
                      height: 70.h,
                      width: 100,
                      fit: BoxFit.fill,
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
                      ],
                    ),
                    SizedBox(
                      width: 80.h,
                    ),

                  ],
                ),



                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MyText(
                      text: "\u{20B9} 100 ",
                      fontName: "balo",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    MyText(
                      text: "MRP \u{20B9} 100 ",
                      fontName: "balo",
                      fontSize: 10.sp,
                      lineThrough: TextDecoration.lineThrough,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){},
                            child: Icon(Icons.delete_outline)),
                        SizedBox(width: 10.h,),
                        MyText(text: "1", fontName: "baloo", fontSize: 14.sp),
                        SizedBox(width: 10.h,),
                        InkWell(
                            onTap: (){},
                            child: Icon(Icons.add)),

                      ],
                    )
                  ],
                ),


              ],
            ),
            SizedBox(height: 10.h,),

            Padding(
              padding:  EdgeInsets.only(left: 20.h, right: 20.h),
              child: Divider(thickness: 3.h, color: Colors.grey.shade400, height: 3.h,),
            ),


          ],
        ),
    )
    );
  }
}
