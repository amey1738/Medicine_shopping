


import 'package:flutter/material.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class FloatingButton extends StatelessWidget {
  final String floatingText;
  final VoidCallback click;
  final Color? color;
  const FloatingButton({super.key, required this.floatingText, required this.click,
    this.color=medicalBlue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: FloatingActionButton.extended(
        onPressed: click,
        label:  MyText(text: floatingText, fontName: 'baloo', color: whiteColor, fontWeight: FontWeight.w600, fontSize: 14),
        backgroundColor: color,
      ),
    );
  }
}
