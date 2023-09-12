import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_shopping/models/slider_model.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/auto_slider_item.dart';

class AutoSliderWidget extends StatefulWidget {
  final List<SliderModel> sliderModels;
  const AutoSliderWidget({super.key,  required this.sliderModels});

  @override
  State<AutoSliderWidget> createState() => _AutoSliderWidgetState();
}

class _AutoSliderWidgetState extends State<AutoSliderWidget> {
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    // CustomLoader.message(sliderController.getSliderData[0].virtualPath.toString());
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider.builder(
              itemCount: sliderImages2.length,
              itemBuilder:
                  (BuildContext context, int index, int pageViewIndex) =>
                       AutoSliderItems(sliderImage: SliderModel(img: sliderImages2[index])),
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                    });
                  }),
            )),
        const SizedBox(height: 5),

      ],
    );
  }
}
