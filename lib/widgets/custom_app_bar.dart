
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/widgets/my_text.dart';


class CustomAppBar extends StatelessWidget {

  final Color? color;
  final String? imagePath;
  final String title;
  final double? leftPadding;
  final double? rightPadding;
  final double? topPadding;
  final double? bottomPadding;
  const CustomAppBar({super.key,
    this.color=Colors.white,
    this.imagePath,
    required this.title,
    this.leftPadding=8.0,
    this.rightPadding=8.0,
    this.topPadding=8.0,
    this.bottomPadding=8.0,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: leftPadding!,right: rightPadding!,top: topPadding!,bottom: bottomPadding!),
      height: 60,
      decoration:  const BoxDecoration(
          color: Colors.white,
      ),
      child:  Row(
        children: [
          InkWell(
            onTap: (){
              Get.back();
            },
            child: const Icon(Icons.arrow_back),
          ),
          SizedBox(width: 10),
          MyText(text: title, fontName: "baloo", fontSize: 18, fontWeight: FontWeight.bold,),
        ],
      ),
    );
  }
}