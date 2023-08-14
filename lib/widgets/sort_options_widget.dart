import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class SortOptionsWidget extends StatefulWidget {
  const SortOptionsWidget({super.key});

  @override
  State<SortOptionsWidget> createState() => _SortOptionsWidgetState();
}

class _SortOptionsWidgetState extends State<SortOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    int selectedRadio = 0;

    setSelectedRadio(int val) {
      setState(() {
        selectedRadio = val;
      });
    }

    return Expanded(
      child: Container(

        color: whiteColor,
        child: Padding(
          padding: EdgeInsets.all(10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              MyText(
                text: 'Sort By',
                fontName: 'baloo',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10.h,
              ),

              RadioListTile(
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {
                    debugPrint('selected value: $value');
                  },
                  title: MyText(
                      text: 'Relevance', fontName: 'baloo', fontSize: 14.sp)),
              RadioListTile(
                  value: 2,
                  groupValue: 1,
                  onChanged: (value) {
                    debugPrint('selected value: $value');

                  },
                  title: MyText(
                      text: 'Average customer rating', fontName: 'baloo', fontSize: 14.sp)),
              RadioListTile(
                  value: 3,
                  groupValue: 1,
                  onChanged: (value) {
                    debugPrint('selected value: $value');

                  },
                  title: MyText(
                      text: 'Price low to high', fontName: 'baloo', fontSize: 14.sp)),
              RadioListTile(
                  value: 4,
                  groupValue: 1,
                  onChanged: (value) {
                    debugPrint('selected value: $value');

                  },
                  title: MyText(
                      text: 'Price high to low', fontName: 'baloo', fontSize: 14.sp)),
              RadioListTile(
                  value: 5,
                  groupValue: 1,
                  onChanged: (value) {
                    debugPrint('selected value: $value');

                  },
                  title: MyText(
                      text: 'Discount', fontName: 'baloo', fontSize: 14.sp)),

            ],
          ),
        ),
      ),
    );
  }
}
