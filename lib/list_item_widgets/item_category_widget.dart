import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/models/category_model.dart';
import 'package:test_shopping/screens/all_prod_screen.dart';
import 'package:test_shopping/widgets/my_text.dart';

class CategoryItemWidget extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryItemWidget(
      {super.key,  required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: InkWell(
        onTap: () {
          Get.to(const AllProdScreen());
        },
        child: Column(
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.network(categoryModel.imgLink.toString(),
                    fit: BoxFit.cover,),
                )
            ),
            const SizedBox(height: 4),
            MyText(
                text: categoryModel.name.toString(),
                fontName: "baloo",
                fontSize: 14,
                maxLines: 1,
            ),


          ],
        ),
      ),
    );
  }
}