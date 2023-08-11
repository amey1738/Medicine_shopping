import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/screens/all_prod_screen.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ItemBrand extends StatelessWidget {
  const ItemBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(AllProdScreen());
      },
      child: Column(
        children: [
          SizedBox(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(sourceImageLink,
                  fit: BoxFit.cover,),
              )
          ),
          SizedBox(height: 4),
          MyText(text: 'brand', fontName: "baloo", fontSize: 14),


        ],
      ),
    );
  }
}
