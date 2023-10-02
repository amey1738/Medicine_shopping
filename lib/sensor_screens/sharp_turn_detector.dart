import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:test_shopping/controller/sensor_controller.dart';

class SharpTurnDetectorScreen extends StatefulWidget {
  const SharpTurnDetectorScreen({Key? key}) : super(key: key);

  @override
  State<SharpTurnDetectorScreen> createState() => _SharpTurnDetectorScreenState();
}

class _SharpTurnDetectorScreenState extends State<SharpTurnDetectorScreen> {

  bool isTurning = false;
  List<double> gyroscopeValues = [0, 0, 0];

  final sensorController = Get.put(SensorController());



  @override
  void initState() {
    super.initState();
    gyroscopeEvents.listen((GyroscopeEvent event) {
      setState(() {
        gyroscopeValues = [event.x, event.y, event.z];
        // Detect a sharp turn based on your own threshold
        isTurning = isSharpTurn(event);
      });
    });
  }


  @override
  void dispose() {
    super.dispose();
  }

  bool isSharpTurn(GyroscopeEvent event) {
    // Adjust these threshold values according to your application's sensitivity
    double threshold = 5.0;
    return event.x.abs() > threshold || event.y.abs() > threshold || event.z.abs() > threshold;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Is Turning: $isTurning',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                Text(
                  'Gyroscope Values:',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'X: ${gyroscopeValues[0].toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Y: ${gyroscopeValues[1].toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Z: ${gyroscopeValues[2].toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        )
    );
  }
}
