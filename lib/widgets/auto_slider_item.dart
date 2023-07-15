import 'package:flutter/material.dart';

class AutoSliderItems extends StatelessWidget {
  final String sliderImage;
  const AutoSliderItems({super.key, required this.sliderImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Image.network(sliderImage.toString(),
            fit: BoxFit.cover),
      ),
    );
  }
}
