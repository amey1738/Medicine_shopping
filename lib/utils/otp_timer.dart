

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import 'package:test_shopping/utils/color_constant.dart';

class OTPTimerController extends GetxController {
  OtpTimerButtonController controller = OtpTimerButtonController();


  Widget otpTimer(VoidCallback click){
    return OtpTimerButton(
      controller: controller,
      height: 60,
      text: const Text(
        'Resend OTP',
        style: TextStyle(fontFamily: 'baloo'),
      ),
      duration: 30,
      radius: 30,
      backgroundColor: medicalBlue,
      textColor: medicalBlue,
      buttonType:
      ButtonType.text_button,
      loadingIndicator: const CircularProgressIndicator(
        strokeWidth: 2,
        color: greenColor,
      ),
      loadingIndicatorColor: medicalBlue,
      onPressed: click,
    );
  }
}
