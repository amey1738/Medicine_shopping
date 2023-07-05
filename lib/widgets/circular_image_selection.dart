
import 'dart:async';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:test_shopping/utils/color_constant.dart';

class CircularImageSelection extends StatelessWidget {
  final VoidCallback click;
  final String imagePath;
  final bool? profileTitleVisibility;
  final String? profileTitle;
  const CircularImageSelection({super.key,
    required this.click, required this.imagePath,
    this.profileTitleVisibility=false, this.profileTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            clipBehavior: Clip.none,
            children:  [
              InkWell(
                onTap: click,
                child:  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(100)),
                        border: Border.all(width: 1, color: greenColor)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Align(
                        alignment: Alignment.center,
                        heightFactor: 0.5,     //Image.file(File(imagePaths)),
                        child: imagePath==""?Image.asset('assets/images/empty_image.png',width: 45,height: 45,fit: BoxFit.fill):
                        imagePath==""?const CircularProgressIndicator(strokeWidth: 2,color: greenColor):
                        Image.file(File(imagePath),width: 100,height: 100,fit: BoxFit.fill),
                      ),
                    ),
                ),
              ),
               Positioned(
                bottom: 0,
                right: 0,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  clipBehavior: Clip.none,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: const Icon(
                      Icons.camera_alt,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: profileTitleVisibility!,
            child: const Column(
          children: [
            SizedBox(height: 20),
            Text("Sanjay",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: blackColor,fontFamily: 'Gilroy',
                ))
          ],
        ))
      ],
    );
  }
}
