import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/authentication/verify_otp_screen.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';
import 'package:test_shopping/widgets/my_text_without_border.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {

  final mobileTextController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      backgroundColor: whiteColor,
      body:Form(
        key: formKey,
        child: Padding(
          padding:  EdgeInsets.all(25.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                  child: Icon(Icons.arrow_back_ios)),
              SizedBox(height: 50.h),
              //logo
              SizedBox(height: 30.h),
              MyText(text: 'Enter your phone number', fontName: 'baloo', fontSize:
              20,fontWeight: FontWeight.w600,color: blackColor),
              SizedBox(height: 10.h),
              MyText(text: 'We will send you a verification code\non the same number', fontName: 'baloo', fontSize:
              16,fontWeight: FontWeight.w500,color: blackColor,textGap: 1.2),
              SizedBox(height: 15.h),
              MyTextFieldWithoutBorder(hintText: 'Mobile Number', controller: mobileTextController,
                  validator: (value) {
                    if (value.toString().length!=10) {
                      return "Enter 10 digits Mobile Number";
                    }else{
                      return null;
                    }
                  }, fontSize: 18, readOnly: false, onTap: () {  }, keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                    FilteringTextInputFormatter.deny(RegExp(r'^0+')),
                    LengthLimitingTextInputFormatter(10),
                  ]),
              const Spacer(),
              MyButtons('Next', medicalBlue,circular: 50, click: (){
                if (formKey.currentState!.validate()) {
                  //send otp method
                  Get.to(VerifyOtpScreen(phoneNumber: mobileTextController.value.text.toString(),));
                }

              }, fontSize: 18,height: 50),
            ],
          ),
        ),
      ),
    )
    );
  }
}
