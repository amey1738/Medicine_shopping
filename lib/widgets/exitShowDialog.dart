
import 'package:flutter/material.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

exitShowDialog(BuildContext context,String title,String subTitle,VoidCallback cancelClick,VoidCallback okClick) {
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MyText( fontName: 'baloo', color: blackColor, fontWeight: FontWeight.w700, fontSize: 18, text: title),
          const SizedBox(height: 10),
          MyText(text: subTitle, fontName: 'baloo', color: blackColor, fontWeight: FontWeight.w500, fontSize: 16),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: cancelClick,
          child:  MyText(text: 'Cancel', fontName: 'baloo', color: blackColor, fontWeight: FontWeight.w600, fontSize: 14),
        ),
        TextButton(
          onPressed: okClick,
          child:  MyText(text: 'Ok', fontName: 'baloo', color: blackColor, fontWeight: FontWeight.w600, fontSize: 14),
        ),
      ],
    ),
  );
}