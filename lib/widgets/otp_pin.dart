
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:test_shopping/utils/color_constant.dart';

class OTPPin extends StatelessWidget {

  final TextEditingController otpController;
  final FocusNode focusNode;
  final ValueChanged onChanged;
  final FormFieldValidator validator;
  const OTPPin({Key? key, required this.otpController, required this.focusNode, required this.onChanged, required this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 55.w,
      margin: const EdgeInsets.only(left: 13,right: 13),
      height: 55.w,
      textStyle:  TextStyle(
          fontSize: 25.sp,
          fontFamily: 'baloo',
          color: blackColor,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(5.r),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
        color: medicalBlue,
      ),
      borderRadius: BorderRadius.circular(5.r),
    );
    return  Center(
      child: Pinput(
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        defaultPinTheme: defaultPinTheme,
        controller: otpController,
        length: 4,
        focusedPinTheme: focusedPinTheme,
        focusNode: focusNode,
        validator: validator,
        androidSmsAutofillMethod:
        AndroidSmsAutofillMethod.smsUserConsentApi,
        listenForMultipleSmsOnAndroid: true,
        // submittedPinTheme: submittedPinTheme,
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        showCursor: true,
        onChanged: onChanged,
      ),
    );
  }
}
