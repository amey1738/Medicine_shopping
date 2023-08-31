import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/list_item_widgets/item_profile_menu.dart';
import 'package:test_shopping/ui_widgets/dev_info_widget.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class BottomNavMyProfileScreen extends StatefulWidget {
  const BottomNavMyProfileScreen({super.key});

  @override
  State<BottomNavMyProfileScreen> createState() =>
      _BottomNavMyProfileScreenState();
}

class _BottomNavMyProfileScreenState extends State<BottomNavMyProfileScreen> {
  List<String> optionList = ['My Points', 'My Addresses', 'My Health Records'];

  List<String> footerOptionList = ['Stores', 'Need Help?', 'About Us'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.only(top: 40.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.h),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: greyBgColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                            text: 'Hello!', fontName: 'baloo', fontSize: 18.sp),
                        SizedBox(
                          height: 4.h,
                        ),
                        MyText(
                            text: 'Your Name Here',
                            fontName: 'baloo',
                            fontSize: 16.sp),
                        SizedBox(
                          height: 10.h,
                        ),
                        MyText(
                          text: 'View your details',
                          fontName: 'baloo',
                          fontSize: 12.sp,
                          color: Colors.blue,
                          lineThrough: TextDecoration.underline,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListView.builder(
                  itemCount: optionList.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ItemProfileMenu(
                      name: optionList[index],
                    );
                  }),
              ListView.builder(
                  itemCount: footerOptionList.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemProfileMenu(
                      name: footerOptionList[index],
                    );
                  }),
              Padding(
                padding:  EdgeInsets.all(10.h),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: lightGreyColor, spreadRadius: 1),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: Center(
                        child: MyText(
                            text: 'Logout',
                            fontName: 'baloo',
                            fontSize: 14.sp)),
                  ),
                ),
              ),
              SizedBox(height: 60.h,),
              const DevInfoWidget()
            ],
          ),
        ),
      ),
    );
  }
}
