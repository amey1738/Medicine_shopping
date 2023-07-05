import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/screens/all_prod_screen.dart';
import 'package:test_shopping/widgets/my_text.dart';

class CategoryItemWidget extends StatelessWidget {

  final String imageLink;
  final String title;

  const CategoryItemWidget(
      {super.key, required this.imageLink, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(AllProdScreen());
      },
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          children: [
            SizedBox(
                height: 80,
                width: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(imageLink.toString(),
                    fit: BoxFit.fill,),
                )
            ),
            SizedBox(height: 4),
            MyText(text: title, fontName: "baloo", fontSize: 14),


          ],
        ),
      ),
    );
  }
}