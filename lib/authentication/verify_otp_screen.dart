import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/bottom_navigation/bottom_navigation_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';
import 'package:test_shopping/widgets/otp_pin.dart';

import '../utils/otp_timer.dart';

class VerifyOtpScreen extends StatefulWidget {
  final String phoneNumber;
  const VerifyOtpScreen({super.key, required this.phoneNumber});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {


  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  final otpController = TextEditingController();
  final otpTimerController = Get.put(OTPTimerController());


  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  requestOtp() {
    otpTimerController.controller.loading();
    Future.delayed(const Duration(seconds: 2), () {
      sendOtp(widget.phoneNumber.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(25.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_ios)),
              SizedBox(height: 50.h),

              SizedBox(height: 30.h),
              MyText(
                  text: 'Enter OTP',
                  fontName: 'baloo',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  ),
              SizedBox(height: 10.h),
              MyText(
                  text: 'We send a 4 digits OTP to +91 ${widget.phoneNumber}',
                  fontName: 'baloo',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  textGap: 1.2),
              SizedBox(height: 15.h),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: OTPPin(
                      otpController: otpController,
                      focusNode: focusNode,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          setState(() {});
                        }
                      },
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Enter 4 digits OTP";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 15.h),
                  otpTimerController.otpTimer(() {
                    requestOtp();
                  }),
                ],
              ),
              const Spacer(),
              MyButtons('Verify', medicalBlue, circular: 50, click: () {
                if (formKey.currentState!.validate()) {
                  verifyOtp(otpController.text.trim());
                }
              }, fontSize: 18, height: 50),
            ],
          ),
        ),
      ),
    ));
  }

  void sendOtp(String mobile) async {
    // SendOtpRequest request =
    // SendOtpRequest(phoneNumber: mobile.toString(), appType: "2");
    // loginModuleController.sendOtp(request).then((value) {
    //   if (value != null) {
    //     CustomLoader.message('Sent OTP');
    //     otpTimerController.controller.startTimer();
    //   } else {
    //     CustomLoader.message('Failed OTP');
    //   }
    // });
  }

  void verifyOtp(String otp) async {
  //   VerifyOtpRequest request = VerifyOtpRequest(
  //       phoneNumber: widget.mobileNumber.toString(),
  //       otp: otp.toString().toString(),
  //       deviceId: "1234",
  //       appType: "2");
  //   loginModuleController.verifyOtp(request).then((value) {
  //     if (value != null) {
  //       Preferences.setUserId(value.data![0].id.toString());
  //       Preferences.setUserToken(value.data![0].token.toString());
  //       Preferences.setRoleID(value.data![0].roleId.toString());
  //       Preferences.setRoleName(value.data![0].roleName.toString());
  //       Preferences.setAddressId(value.data![0].addressId.toString());
  //       Get.to(const CustomBottomNav());
  //     }
  //   });
    Get.to(CustomBottomNav());

   }

}
