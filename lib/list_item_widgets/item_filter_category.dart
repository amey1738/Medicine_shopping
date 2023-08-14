
import 'package:flutter/material.dart';
import 'package:test_shopping/widgets/my_text.dart';

class FilterCateItems extends StatelessWidget {
  final Color color;
  final Color strokeColor;
  final VoidCallback click;
  final String categoryName;

  const FilterCateItems(
      {super.key,
        required this.color,
        required this.click,
        required this.strokeColor, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        onTap: click,
        child: Container(
          height: 35,
          width: 80,
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              border: Border.all(color: strokeColor)),
          child: Center(
              child: MyText(
                  text: categoryName,
                  fontName: 'baloo',
                  fontSize: 14,
                  color: Colors.black)),
        ),
      ),
    );
  }
}
