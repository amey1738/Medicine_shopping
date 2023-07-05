
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/image_assets.dart';
import 'package:test_shopping/widgets/my_text.dart';


class MainAppBar extends StatelessWidget {

  final Color? color;
  const MainAppBar({super.key,
    this.color=Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all( 8.h),
      height: 60.h,
      width: double.infinity,
      decoration:  const BoxDecoration(
          color: Colors.white,
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){

                },
                child: Icon(Icons.person),
              ),
              InkWell(
                onTap: (){

                },
                child: Icon(Icons.person),
              ),
              const SizedBox(width: 10),
            ],
          ),
          Row(
            children: [
              InkWell(
                  onTap: (){

                  },
                  child: const Icon(CupertinoIcons.search)
              ),
              SizedBox(width: 15.h,),
              InkWell(
                  onTap: (){
                  },
                  child: const Icon(CupertinoIcons.bell_fill)
              ),
              SizedBox(width: 10.h,),
            ],
          ),
        ],
      ),
    );
  }
}