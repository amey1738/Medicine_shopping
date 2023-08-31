import 'package:flutter/material.dart';
import 'package:test_shopping/models/slider_model.dart';

class AutoSliderItems extends StatelessWidget {
  final SliderModel sliderImage;
  const AutoSliderItems({super.key, required this.sliderImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ClipRRect(
        child: Image.network(sliderImage.img.toString(),
            fit: BoxFit.cover),
      ),
    );
  }
}
