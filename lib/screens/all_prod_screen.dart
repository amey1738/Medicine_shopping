import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/list_item_widgets/item_product.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/filter_options_widget.dart';
import 'package:test_shopping/widgets/my_text.dart';
import 'package:test_shopping/widgets/sort_options_widget.dart';

class AllProdScreen extends StatefulWidget {
  const AllProdScreen({super.key});

  @override
  State<AllProdScreen> createState() => _AllProdScreenState();
}

class _AllProdScreenState extends State<AllProdScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Column(
          children: [
            const CustomAppBar(title: "Products"),
            Container(
              color: greyBgColor,
              child: Padding(
                padding:  EdgeInsets.all(10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        showFilterOptions();
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.filter_alt_outlined),
                          MyText(text: 'Filter', fontName: 'baloo', fontSize: 14.sp),
                        ],
                      ),
                    ),
                    MyText(text: '|', fontName: 'baloo', fontSize: 14.sp),
                    InkWell(
                      onTap: (){
                        showSortOptions();
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.sort),
                          MyText(text: 'Sort', fontName: 'baloo', fontSize: 14.sp),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.only(left: 10.h,right: 10.h),
                child: ListView.builder(
                    itemCount: dummyProducts.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10.h),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemProduct(productModel: dummyProducts[index],);

                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showFilterOptions(){
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return const FilterOptionsWidget();
      },
    );
  }

  void showSortOptions(){
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return const SortOptionsWidget();
      },
    );
  }

}
