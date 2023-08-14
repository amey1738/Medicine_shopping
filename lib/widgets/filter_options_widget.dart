import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:test_shopping/list_item_widgets/item_filter_category.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class FilterOptionsWidget extends StatefulWidget {
  const FilterOptionsWidget({super.key});

  @override
  State<FilterOptionsWidget> createState() => _FilterOptionsWidgetState();
}

class _FilterOptionsWidgetState extends State<FilterOptionsWidget> {
  @override
  Widget build(BuildContext context) {

    int? isSelectedCategories = -1;

    var catList = <String>['category 1, category 2, category 3'].obs;

    return Container(
      color: whiteColor,
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MyText(text: 'Categories', fontName: 'baloo', fontSize: 16.sp, fontWeight: FontWeight.bold,),
            SizedBox(height: 10.h,),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 18 - 1,
              child: ListView.builder(
                  itemCount: catList.length,
                  shrinkWrap: false,
                  padding: const EdgeInsets.only(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return FilterCateItems(
                      color: isSelectedCategories == index
                          ? greenColor
                          : transparentColor,
                      click: () {
                        setState(() {
                          isSelectedCategories = index;

                        });
                        if(catList.isNotEmpty){
                          catList.clear();
                        }

                      },
                      strokeColor: isSelectedCategories == index
                          ? medicalBlue
                          : Colors.black,
                      categoryName: catList[index],);
                  }),
            ),

            MyText(text: 'Brand', fontName: 'baloo', fontSize: 14.sp),
            MyText(text: 'Price', fontName: 'baloo', fontSize: 14.sp),
          ],
        ),
      ),
    );
  }
}
