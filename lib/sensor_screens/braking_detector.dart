import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:test_shopping/controller/sensor_controller.dart';
import 'package:test_shopping/widgets/my_text.dart';
import 'package:test_shopping/widgets/my_textfield.dart';

class BrakingDetectorScreen extends StatefulWidget {
  const BrakingDetectorScreen({Key? key}) : super(key: key);

  @override
  State<BrakingDetectorScreen> createState() => _BrakingDetectorScreenState();
}

class _BrakingDetectorScreenState extends State<BrakingDetectorScreen> {
  double previousAcceleration = 0.0;
  double threshold = -5.0; // Adjust this threshold as needed

  final sensorController = Get.put(SensorController());

  final thresholdTextController = TextEditingController();

  @override
  void initState() {
    super.initState();

    accelerometerEvents.listen((AccelerometerEvent event) {
      double acceleration = event.y; // You can use other axes as needed
      sensorController.currentAcceleration.value = acceleration;
      if ((previousAcceleration - acceleration) >= threshold) {
        // Harsh braking detected, take action here
        print('Harsh braking detected!');
        sensorController.isHarshBraking.value = true;
      } else {
        sensorController.isHarshBraking.value = false;
      }

      previousAcceleration = acceleration;
    });
  }

  @override
  void dispose() {
    super.dispose();
    accelerometerEvents.drain();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Obx(
        () => Center(
          child: Column(
            children: [
              Text('Listening to accelerometer data : ${sensorController.currentAcceleration.toString()}'),
              SizedBox(
                height: 10.h,
              ),
              Text('Enter Threshold'),
              MyTextField(
                  controller: thresholdTextController,
                  hintText: 'enter threshold',
                  hintColor: Colors.black),
              SizedBox(height: 10.h,),
              Visibility(
                visible: sensorController.isHarshBraking.value,
                child: MyText(
                  text: 'Harsh Braking',
                  fontName: 'baloo',
                  fontSize: 20.sp,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
