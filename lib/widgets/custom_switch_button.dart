
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/widgets/image_assets.dart';
import 'package:test_shopping/widgets/my_text.dart';

class CustomSwitchButton extends StatelessWidget {

  final VoidCallback animalClick;
  final Color animalColorBtn;
  final String title;
  final Color titleColor;
  final Color? imageColor;
  final String iconsImage;
  const CustomSwitchButton({super.key,
    required this.animalClick,
    required this.animalColorBtn,
    required this.title,
    required this.titleColor,
    this.imageColor=Colors.black, required this.iconsImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: animalClick,
        child: Container(
          decoration: BoxDecoration(
              color: animalColorBtn,
              borderRadius: const BorderRadius.all(Radius.circular(5))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageAssets(imageAssets: iconsImage, height: 20.h, width: 20.h,imageColor: imageColor),
              const SizedBox(width: 10),
              MyText(text: title, fontName: 'baloo', fontSize: 14.sp,color: titleColor,fontWeight: FontWeight.w600),
            ],
          ),
        ),
      ),
    );
  }
}
