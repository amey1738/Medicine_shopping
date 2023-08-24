import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:test_shopping/authentication/login_screen.dart';
import 'package:test_shopping/bottom_navigation/bottom_navigation_screen.dart';
import 'package:test_shopping/models/onboard_model.dart';
import 'package:test_shopping/onborading/onboarding_content.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/dots_indicator.dart';
import 'package:test_shopping/widgets/my_text.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final String textSample =
      loremIpsum(words: 60, paragraphs: 1, initWithLorem: true);

  int pageIndex = 0;

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

  final List<OnboardModel> onboardList = [
    OnboardModel(
        image: sourceImageLink2,
        title: 'first title',
        desc: 'asdasdasdkjasldjkkasd \naskdjhasdsad'),
    OnboardModel(
        image: sourceImageLink2,
        title: 'second title',
        desc: 'asdasdasdkjasldjkkasd \naskdjhasdsad'),
    OnboardModel(
        image: sourceImageLink2,
        title: 'third title',
        desc: 'asdasdasdkjasldjkkasd \naskdjhasdsad'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onboardList.length,
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              itemBuilder: (context, index) => OnBoardingContent(
                onboardModel: onboardList[index],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h,right: 20.h),
            child: Row(
              children: [
                ...List.generate(
                    onboardList.length,
                    (index) => Padding(
                          padding: EdgeInsets.only(right: 4.h),
                          child: DotsIndicator(
                            isActive: index == pageIndex,
                          ),
                        )),
                const Spacer(),
                SizedBox(
                  height: 60.h,
                  width: 60.h,
                  child: ElevatedButton(
                    onPressed: () {
                      pageIndex < onboardList.length-1?
                      pageController.nextPage(
                          duration: Duration(milliseconds: 1000),
                          curve: Curves.ease):
                          Get.to(const LoginScreen());
                    },
                    style: ElevatedButton.styleFrom(shape: CircleBorder()),
                    child: Icon(Icons.arrow_forward_outlined),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          )
        ],
      ),
    ));
  }
}
