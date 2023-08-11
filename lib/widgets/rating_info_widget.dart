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
          padding: EdgeInsets.all(10.h),
          child: Row(
            children: <Widget>[
              MyText(text: '4', fontName: 'baloo', fontSize: 28.sp),
              MyText(text: '/5', fontName: 'baloo', fontSize: 20.sp)
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RatingBar.builder(
              itemSize: 20.h,
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
              width: 20.h,
            ),
            MyText(text: "100 Ratings", fontName: "baloo", fontSize: 14.sp),
            MyText(text: "223 Reviews", fontName: "baloo", fontSize: 14.sp),
            Divider(
              height: 10.h,
              thickness: 0.4.h,
              color: lightGreyColor,
            ),
          ],
        )
      ],
    );
  }
}
