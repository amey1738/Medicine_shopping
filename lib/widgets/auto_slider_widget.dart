
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/auto_slider_item.dart';

class AutoSliderWidget extends StatefulWidget {

  const AutoSliderWidget({super.key});
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index,
                    int pageViewIndex) =>
                    AutoSliderItems(sliderImage: sourceImageLink),
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
              ),
            )),
        const SizedBox(height: 5),
        Center(
          child: DotsIndicator(
            dotsCount: 1,
            position: _currentPage,
            decorator: DotsDecorator(
              size: const Size.square(6.0),
              activeSize: const Size(18.0, 6.0),
              activeColor: medicalBlue,
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
