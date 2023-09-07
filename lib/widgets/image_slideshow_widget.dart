import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/models/product_model.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';

class ImageSlideShowWidget extends StatelessWidget {
  final List<Images>? images;
  const ImageSlideShowWidget({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      height: 250.h,
      initialPage: 0,
      indicatorColor: greenColor,
      indicatorBackgroundColor: Colors.grey,
      onPageChanged: (value) {
        print('Page changed: $value');
      },
      autoPlayInterval: 3000,
      isLoop: false,
      children: List<Widget>.generate(
        images!.length,
            (index) {
          return Image.network(
            images![index].imgLink.toString(),
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace){
              return Image.asset('assets/images/empty_image.png');
            },


          );
        },
      ),
    );
  }
}
