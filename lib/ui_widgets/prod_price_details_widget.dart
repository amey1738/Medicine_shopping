import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';
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
  String selectedPrice = dummyPrice[0].id.toString();

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
            dropDownPrice(),
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
  Widget dropDownPrice(){
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(5))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton(
          underline: Container(
          ),
          icon: const Icon(Icons.keyboard_arrow_down),
          isDense: true,
          isExpanded: true,
          items: dummyPrice.map((e) {
            return DropdownMenuItem(
              value: e.id!.toString(),
              child: Row(
                children: [
                  Text('${e.name.toString()} - ',style: const TextStyle(fontFamily: 'baloo')),
                  SizedBox(width: 20.h,),
                  MyText(text: '\u{20B9} ${e.price.toString()}', fontName: 'baloo', fontSize: 15.sp, fontWeight: FontWeight.bold,),
                  SizedBox(width: 10.h,),
                  MyText(text: '\u{20B9} ${e.mrp.toString()}', fontName: 'baloo', fontSize: 14.sp,lineThrough: TextDecoration.lineThrough,),
                ],
              ),
            );
          }
          ).toList(),
          value: selectedPrice.toString().isNotEmpty? selectedPrice : null,
          hint:  Text('Select Type'.tr,style:  TextStyle(fontFamily: 'baloo'),),
          onChanged: (value) {
            setState(() {
              selectedPrice = value!.toString();
              debugPrint('selected role id : ${selectedPrice.toString()}');
              // isSelected = true;
            });
          },
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
