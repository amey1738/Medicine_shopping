
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/custom_loader.dart';

class MainHeader extends StatelessWidget {
  final bool? cartVisibility;
  final Color? containerColor;
  const MainHeader({super.key, this.cartVisibility = false, this.containerColor=greenColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, right: 6, left: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/animal_logo_with_title.png', width: 180),
          Row(
            children: [
              Visibility(
                  visible: cartVisibility!,
                  child: InkWell(
                    onTap: (){
                      CustomLoader.message("msg");
                      // Get.to();
                    },
                    child: Container(
                        height: 35,
                        width: 35,
                        decoration:  BoxDecoration(
                            color: containerColor!,
                            borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        child: const Icon(CupertinoIcons.cart_fill,size: 20,color: whiteColor)),
                  )),
              const SizedBox(width: 10),
              Container(
                height: 35,
                  width: 35,
                  decoration:  BoxDecoration(
                    color: containerColor!,
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                  child: const Icon(CupertinoIcons.bell_fill,size: 20,color: whiteColor,)),
            ],
          ),
        ],
      ),
    );
  }
}
