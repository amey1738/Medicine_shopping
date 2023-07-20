import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/list_item_widgets/item_widgets/add_to_cart_plus_minus_btn.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/custom_loader.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ProdPriceDetailsWidget extends StatefulWidget {
  const ProdPriceDetailsWidget({super.key});

  @override
  State<ProdPriceDetailsWidget> createState() => _ProdPriceDetailsWidgetState();
}

class _ProdPriceDetailsWidgetState extends State<ProdPriceDetailsWidget> {

  String dropdownValue = priceOptionDropdown.first;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey.shade300,
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(text: "Select Item", fontName: "baloo", fontSize: 12.sp),
            SizedBox(height: 10.h,),
            dropDown(),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    MyText(text: "30 Capcules", fontName: "baloo", fontSize: 12.sp, color: Colors.grey.shade600,),
                    MyText(text: "(Inclusive of all taxes)", fontName: "baloo", fontSize: 12.sp, color: Colors.grey.shade600,),
                  ],
                ),
                AddToCartPlusMinusBtn(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget dropDown() {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(5))
        ),
        child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: DropdownButton<String>(
              value: dropdownValue,
              isExpanded: true,
              icon: const Icon(CupertinoIcons.chevron_down),
              iconSize: 20,
              elevation: 16,
              focusColor: whiteColor,
              style: const TextStyle(
                  color: blackColor, fontFamily: 'baloo', fontSize: 16),
              underline: Container(),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;

                  CustomLoader.message(dropdownValue.toString());
                });
              },
              items: priceOptionDropdown.map<DropdownMenuItem<String>>((
                  String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )
        ));
  }
}
