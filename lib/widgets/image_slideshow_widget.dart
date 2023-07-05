
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';

class ImageSlideShowWidget extends StatelessWidget {
  const ImageSlideShowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  ImageSlideshow(
      width: double.infinity,
      height: 250.h,
      initialPage: 0,

      indicatorColor: greenColor,
      indicatorBackgroundColor: Colors.grey,
      children: [
        Image.network(sourceImageLink, fit: BoxFit.fill,),
        Image.network(sourceImageLink,fit: BoxFit.fill),
        Image.network(sourceImageLink,fit: BoxFit.fill),
      ],
      onPageChanged: (value) {
        print('Page changed: $value');
      },
      autoPlayInterval: 3000,
      isLoop: true,
    );
  }
}
