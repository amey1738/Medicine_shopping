import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/controller/add_to_cart_increase_controller.dart';
import 'package:test_shopping/controller/cart_plus_minus_controller.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/custom_loader.dart';
import 'package:test_shopping/widgets/my_text.dart';

class CartItemPlusMinusWidget extends StatefulWidget {
  const CartItemPlusMinusWidget({super.key});

  @override
  State<CartItemPlusMinusWidget> createState() => _CartItemPlusMinusWidgetState();
}

class _CartItemPlusMinusWidgetState extends State<CartItemPlusMinusWidget> {

  final controller = Get.put(CartPlusMinusController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      width: 78.h,
      color: darkGrey,
      child: Center(
        child: Padding(
          padding:  EdgeInsets.all(2.h),
          child: Row(
            children: [
              InkWell(
                  onTap: (){
                    if(controller.count.toInt() == 1){
                      CustomLoader.showToast('delete item');
                    }else{
                      controller.decrement();
                    }
                  },
                  child: controller.count.toInt() == 1?const Icon(Icons.delete_outline):const Icon(Icons.remove)
              ),
              SizedBox(width: 10.h,),
              MyText(text: controller.count.toString(), fontName: "baloo", fontSize: 14.sp),
              SizedBox(width: 10.h,),
              InkWell(
                  onTap: (){
                    controller.increment();
                  },
                  child: Icon(Icons.add)),
            ],
          ),
        ),
      ),
    ));
  }
}
