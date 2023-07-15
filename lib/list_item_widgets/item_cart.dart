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
        padding: EdgeInsets.all(10.h),
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
                  height: 70.h,
                  width: 100,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 10,
                ),

                MyText(
                  text: "\u{20B9} 100 ",
                  fontName: "balo",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
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

                  ],
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding:  EdgeInsets.only(left: 20.h, right: 20.h),
              child: Divider(thickness: 3, color: Colors.grey.shade400, height: 5,),
            ),


          ],
        ),
    )
    );
  }
}
