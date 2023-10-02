
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddToCartIncrease extends GetxController{
  var count = 0.obs;
  increment() => count++;
  decrement() => count>0?count--:debugPrint('');
}