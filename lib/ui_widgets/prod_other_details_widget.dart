import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ProdOtherDetailsWidget extends StatefulWidget {
  const ProdOtherDetailsWidget({super.key});

  @override
  State<ProdOtherDetailsWidget> createState() => _ProdOtherDetailsWidgetState();
}

class _ProdOtherDetailsWidgetState extends State<ProdOtherDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey.shade300,
      child: Padding(
        padding:  EdgeInsets.all(10.h),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.show_chart, color: Colors.grey.shade600,),
                SizedBox(width: 5.h,),
                MyText(text: "0 people bought this recently", fontName: "baloo", fontSize: 12.sp)
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                Icon(Icons.local_shipping, color: Colors.grey.shade600,),
                SizedBox(width: 5.h,),
                MyText(text: "Earliest Delivery by ", fontName: "baloo", fontSize: 12.sp),
                MyText(text: "Tomorrow ", fontName: "baloo", fontSize: 12.sp, fontWeight: FontWeight.bold,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
