import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/models/address_model.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class AddressItem extends StatelessWidget {
  final String name;
  final bool? isSelected;
  final VoidCallback click;
  final Color boxColor;
  final AddressModel addressModel;
  const AddressItem(
      {Key? key, required this.name, this.isSelected, required this.click, required this.boxColor, required this.addressModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h,),
      child: InkWell(
        onTap: click,
        child: Container(
          color: boxColor,
          child: Padding(
            padding: EdgeInsets.all(10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 20.h,
                        width: 30.h,
                        child: Visibility(
                            visible: isSelected==true? true:false,
                            child: Icon(Icons.done))

                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(text: addressModel.name.toString(),
                          fontName: "baloo",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,),
                        SizedBox(height: 4.h,),
                        MyText(text: addressModel.line1.toString(),
                          fontName: "baloo",
                          fontSize: 12.sp,),
                        SizedBox(height: 4.h,),
                        MyText(text: addressModel.line2.toString(),
                          fontName: "baloo",
                          fontSize: 12.sp,),
                        SizedBox(height: 4.h,),
                        MyText(text: '${addressModel.city} , ${addressModel.state}',
                          fontName: "baloo",
                          fontSize: 12.sp,),
                        SizedBox(height: 4.h,),
                        MyText(text: addressModel.pincode.toString(),
                          fontName: "baloo",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,),
                        SizedBox(height: 4.h,),
                      ],
                    ),
                  ],
                ),
                Divider(thickness: 1.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: MyText(text: "Remove",
                            fontName: "baloo",
                            fontSize: 14.sp)),
                    const VerticalDivider(
                      width: 10,
                      thickness: 1,
                    ),
                    // SizedBox(width: 10.h,),
                    InkWell(
                        onTap: () {},
                        child: MyText(
                            text: "Edit", fontName: "baloo", fontSize: 14.sp))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
