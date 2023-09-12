
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CartPlusMinusController extends GetxController{
  var count = 1.obs;
  increment() => count++;
  decrement() => count>1?count--:debugPrint('');
}