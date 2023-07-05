import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';


Future<bool> CustomPopup(context, String title,) async {
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(text: title, fontName: "baloo", fontSize: 14.sp),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          print('yes selected');

                          // exit(0);
                        },
                        child:  Text("Yes"),
                        style: ElevatedButton.styleFrom(
                            primary: greenColor),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('no selected');
                            Navigator.of(context).pop();
                          },
                          child: Text("No".tr, style: TextStyle(color: Colors.black, fontFamily: "baloo")),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        );
      });
}

