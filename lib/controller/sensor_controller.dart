

import 'package:get/get.dart';

class SensorController extends GetxController{
  RxBool hardBraking = true.obs;
  var previousAcceleration = 0.0.obs;
  var currentAcceleration = 0.0.obs;
  var threshold = -5.0.obs;
  RxBool isHarshBraking = false.obs;

  RxBool isTurning = false.obs;
  RxList<int> gyroscopeValues = [0, 0, 0].obs;
}