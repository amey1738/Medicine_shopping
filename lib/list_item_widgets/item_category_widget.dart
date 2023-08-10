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
    return Padding(
      padding: EdgeInsets.all(4),
      child: InkWell(
        onTap: () {
          Get.to(AllProdScreen());
        },
        child: Column(
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(imageLink.toString(),
                    fit: BoxFit.cover,),
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