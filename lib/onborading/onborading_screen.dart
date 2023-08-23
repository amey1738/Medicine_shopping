import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:test_shopping/onborading/onboarding_content.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  String textSample = loremIpsum(words: 60, paragraphs: 1, initWithLorem: true);

  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemBuilder: (context, index) => OnBoardingContent(
                imageLink: sourceImageLink,
                title: 'first title',
                desc: textSample,
              ),
            ),
          ),
          SizedBox(
            height: 60.h,
            width: 60.h,
            child: ElevatedButton(
              onPressed: () {
                pageController.nextPage(duration: Duration(milliseconds: 3000), curve: Curves.ease);
              },
              style: ElevatedButton.styleFrom(shape: CircleBorder()),
              child: Icon(Icons.arrow_forward_outlined),
            ),
          ),
          SizedBox(height: 20.h,)
        ],
      ),
    ));
  }
}
