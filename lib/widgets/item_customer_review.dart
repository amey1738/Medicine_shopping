import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/circular_image.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/custom_loader.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ItemCustomerReview extends StatelessWidget {
  const ItemCustomerReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircularImage(radius: 40.h),
              SizedBox(
                width: 10.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      MyText(text: 'Name', fontName: 'baloo', fontSize: 14.sp),
                      SizedBox(
                        width: 10.h,
                      ),
                      MyText(
                        text: '(Verified Buyer)',
                        fontName: 'baloo',
                        fontSize: 12.sp,
                        color: lightGreyColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MyText(
                      text: 'January, 2022',
                      fontName: 'baloo',
                      fontSize: 12.sp),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          RatingBar.builder(
            itemSize: 14.h,
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
              text: 'Customer Review content here',
              fontName: 'baloo',
              fontSize: 14.sp),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              InkWell(
                  onTap: () {
                    CustomLoader.showToast('Like Review');
                  },
                  child: const Icon(
                    Icons.thumb_up_alt_outlined,
                    color: lightGreyColor,
                  )),
              SizedBox(
                width: 20.h,
              ),
              InkWell(
                  onTap: () {
                    CustomLoader.showToast('Like Review');
                  },
                  child: const Icon(Icons.info_outline, color: lightGreyColor))
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Divider(
            height: 10.h,
            thickness: 0.4.h,
            color: lightGreyColor,
          ),
        ],
      ),
    );
  }
}
