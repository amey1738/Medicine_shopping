import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/models/product_model.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/utils/dummy_data.dart';
import 'package:test_shopping/widgets/my_text.dart';

class OrderSummeryItems extends StatelessWidget {
  final ProductModel productModel;
  const OrderSummeryItems({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: greyBgColor,
        child: Padding(
          padding:  EdgeInsets.all(10.h),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      productModel.images![0].imgLink.toString(),
                      height: 60.h,
                      width: 60.h,
                      fit: BoxFit.fitHeight,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(text: productModel.name.toString(), fontName: 'baloo', fontSize: 14.sp),
                          MyText(text: productModel.desc.toString(), fontName: 'baloo', fontSize: 12.sp, color: grey,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.h,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(text: "\u{20B9} ${productModel.price.toString()}.00", fontName: 'baloo', fontSize: 16.sp),
                  MyText(text: "\u{20B9} ${productModel.mrp.toString()}.00", fontName: 'baloo', fontSize: 14.sp, color: grey, lineThrough: TextDecoration.lineThrough,),

                ],
              )
            ],
          ),
        )
    );
  }
}
