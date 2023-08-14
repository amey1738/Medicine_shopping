import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class RatingInfoWidget extends StatelessWidget {
  const RatingInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.h, top: 5.h, bottom: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Row(
                    children: <Widget>[
                      MyText(text: '4', fontName: 'baloo', fontSize: 40.sp),
                      MyText(text: '/5', fontName: 'baloo', fontSize: 25.sp)
                    ],
                  ),
                  RatingBar.builder(
                    itemSize: 25.h,
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
                      color: Colors.yellow.shade800,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  MyText(
                      text: "100 Ratings", fontName: "baloo", fontSize: 14.sp),
                  MyText(
                      text: "223 Reviews", fontName: "baloo", fontSize: 14.sp),
                  Divider(
                    height: 10.h,
                    thickness: 0.4.h,
                    color: lightGreyColor,
                  )
                ],
              ),
              SizedBox(
                width: 20.h,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(text: '5 Star', fontName: 'baloo', fontSize: 12.sp),
                        MyText(text: '90%', fontName: 'baloo', fontSize: 12.sp),
                      ],
                    ),
                    const LinearProgressIndicator(
                      value: 0.9,
                      backgroundColor: darkGrey,

                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(text: '4 Star', fontName: 'baloo', fontSize: 12.sp),
                        MyText(text: '80%', fontName: 'baloo', fontSize: 12.sp),
                      ],
                    ),
                    const LinearProgressIndicator(
                      value: 0.8,
                      backgroundColor: darkGrey,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(text: '3 Star', fontName: 'baloo', fontSize: 12.sp),
                        MyText(text: '55%', fontName: 'baloo', fontSize: 12.sp),
                      ],
                    ),
                    const LinearProgressIndicator(
                      value: 0.6,
                      backgroundColor: darkGrey,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(text: '2 Star', fontName: 'baloo', fontSize: 12.sp),
                        MyText(text: '20%', fontName: 'baloo', fontSize: 12.sp),
                      ],
                    ),
                    const LinearProgressIndicator(
                      value: 0.3,
                      backgroundColor: darkGrey,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(text: '1 Star', fontName: 'baloo', fontSize: 12.sp),
                        MyText(text: '100%', fontName: 'baloo', fontSize: 12.sp),
                      ],
                    ),
                    const LinearProgressIndicator(
                      value: 0.2,
                      backgroundColor: darkGrey,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
