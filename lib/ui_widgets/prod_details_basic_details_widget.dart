import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ProdDetailsBasicDetailsWidget extends StatefulWidget {
  final String prodName, vendorName;
  final int rating, totalRatings;
  const ProdDetailsBasicDetailsWidget({super.key, required this.prodName, required this.vendorName, required this.rating, required this.totalRatings});

  @override
  State<ProdDetailsBasicDetailsWidget> createState() => _ProdDetailsBasicDetailsWidgetState();
}

class _ProdDetailsBasicDetailsWidgetState extends State<ProdDetailsBasicDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey.shade300,
      child: Padding(
        padding:  EdgeInsets.all(10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(text: widget.prodName, fontName: "baloo", fontSize: 18.sp, fontWeight: FontWeight.bold,),
            SizedBox(height: 5.h,),
            MyText(text: widget.vendorName, fontName: "baloo", fontSize: 12.sp),
            SizedBox(height: 10.h,),
            Row(
              children: [
                RatingBar.builder(
                  itemSize: 20.h,
                  initialRating: double.parse(widget.rating.toString()),
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
                SizedBox(width: 10.h,),
                MyText(text: "(${widget.totalRatings.toString()} Ratings)", fontName: "baloo", fontSize: 12.sp),

              ],
            )

          ],
        ),
      ),
    );
  }
}
