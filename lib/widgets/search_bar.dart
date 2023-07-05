


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomSearchBar extends StatelessWidget {
  final VoidCallback onTap;
  const CustomSearchBar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 15,bottom: 20,right: 8),
      child: SizedBox(
        height: 45,
        child: TextField(
          readOnly: false,
          onTap: onTap,
            //Get.to(const ShopByCategoryListScreen());

          decoration: InputDecoration(
              prefixIcon: const Icon(CupertinoIcons.search , color: Colors.grey),
              hintText: 'Search',
              hintStyle: const TextStyle(fontFamily: 'baloo'),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10))),
          onChanged: (value) {
            // do something
          },
        ),
      ),
    );
  }
}
