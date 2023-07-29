import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/dummy_data.dart';

class OrderItemImageWidget extends StatelessWidget {
  final String imgLink;
  const OrderItemImageWidget({super.key, required this.imgLink});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(4.h),
      child: SizedBox(
        height: 40.h,
        width: 40.h,
        child: Image.network(
          imgLink,fit: BoxFit.fill,
        ),
      ),
    );
  }
}
