
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_text.dart';

class InvCategoryItem extends StatelessWidget {

  final String? imageLink;
  final String? title;
  final String? count;
  final bool? visibility;
  final Color? borderColor;
  final VoidCallback? click;

  const InvCategoryItem({super.key,
     this.imageLink="",
     this.title="",
     this.count="",
    this.visibility = false, this.borderColor=darkGrey, this.click});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Padding(
        padding: EdgeInsets.all(4.h),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: borderColor!,width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    SizedBox(
                        height: 80.h,
                        width: 80.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: imageLink==""?Container(
                            color: grey,
                          ):Image.network(imageLink!,
                            fit: BoxFit.fill),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Visibility(
                          visible : visibility!,
                          child: Container(
                              alignment: Alignment.center,
                              height: 20.h,
                              width: 20.h,
                              color: Colors.red,
                              child: MyText(text: count!, fontName: "baloo", fontSize: 12.sp, color: whiteColor,fontWeight: FontWeight.bold,)),
                        )
                      ),
                    ),
                  ]
                ),
                SizedBox(height: 4.h),
                MyText(text: title==""?"wait":title!, fontName: "baloo", fontSize: 14.sp,color: borderColor,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
