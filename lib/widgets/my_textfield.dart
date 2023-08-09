import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/utils/color_constant.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged? onChanged;
  final String hintText;
  final Color hintColor;
  final TextInputType? textInputType;
  final FormFieldValidator? validator;
  final bool? enabled;

  const MyTextField(
      {Key? key,
      required this.controller,
      this.onChanged,
      required this.hintText,
      required this.hintColor,
      this.textInputType,
      this.validator, this.enabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: TextFormField(
            enabled: enabled,
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
            decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: medicalBlue),
                ),
                hintText: hintText,
                hintStyle: TextStyle(
                    color: hintColor,
                    fontSize: 14,
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.w500),
                counterText: ""),
            cursorColor: Colors.black,
            maxLength: 50,
          ),
        ));
  }
}
