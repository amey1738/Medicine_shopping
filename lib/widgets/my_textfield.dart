import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged? onChanged;
  final String  hintText;
  final Color   hintColor;
  final TextInputType?   textInputType;
  final FormFieldValidator? validator;
  const MyTextField({Key? key, required this.controller, this.onChanged, required this.hintText, required this.hintColor, this.textInputType, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius:
            const BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: lightGreyColor)),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: TextFormField(
            controller: controller,
            validator: validator,
            keyboardType: textInputType,
            onChanged: onChanged,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Gilroy',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none),
            decoration:  InputDecoration(
              hintText: hintText,
                hintStyle: TextStyle(color: hintColor,fontSize: 14,fontFamily: "Gilroy",fontWeight: FontWeight.w500),
                border: InputBorder.none, counterText: ""),
            cursorColor: Colors.black,
            maxLength: 50,
          ),
        ));
  }
}
