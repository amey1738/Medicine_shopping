import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/models/brand_model.dart';
import 'package:test_shopping/screens/all_prod_screen.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ItemBrand extends StatelessWidget {
  final BrandModel brandModel;
  final VoidCallback click;
  const ItemBrand({super.key, required this.brandModel, required this.click});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: click,
      child: Column(
        children: [
          SizedBox(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  brandModel.img.toString(),
                  fit: BoxFit.cover,),
              )
          ),
          SizedBox(height: 4),
          MyText(text: brandModel.name.toString(), fontName: "baloo", fontSize: 14),


        ],
      ),
    );
  }
}
