import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/widgets/my_text.dart';

class DonationReasonItem extends StatelessWidget {

  final bool? checkedvalue = false;
  final String name;

  const DonationReasonItem({super.key, required this.name});




  @override
  Widget build(BuildContext context) {


    return Container(
      child:
      CheckboxListTile(
        title: MyText(text: name, fontName: "baloo", fontSize: 14.sp,),
        value: checkedvalue,
        onChanged: (newValue) {

        },
        controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
      ),
    );
  }
}
