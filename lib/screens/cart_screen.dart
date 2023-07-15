import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_shopping/list_item_widgets/item_cart.dart';
import 'package:test_shopping/ui_widgets/cart_details_widget.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.only(top: 40.h),
        child: Column(
          children: [
            Expanded(
              flex: 1,
                child: CustomAppBar(title: "My Cart")),



            // SizedBox(height: 20.h,),
            Expanded(
              flex: 10,
              child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemCart();

                  }),
            ),

            Expanded(
              flex: 6,
                child: CartDetailsWidget()
            )
          ],
        ),
      ),
    );
  }
}
