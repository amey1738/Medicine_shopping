import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_shopping/controller/add_address_controller.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/custom_app_bar.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_textfield.dart';

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  final addAddressController = Get.put(AddAddressController());

  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(title: "Add New Address"),
            SizedBox(
              height: 10.h,
            ),
            MyTextField(
                controller: addAddressController.pincode.value,
                hintText: "PINCODE",
                hintColor: grey),
            SizedBox(
              height: 10.h,
            ),
            MyTextField(
                controller: addAddressController.addreesLine.value,
                hintText: "House No, Building and Locality",
                hintColor: grey),
            SizedBox(
              height: 10.h,
            ),
            MyTextField(
                controller: addAddressController.name.value,
                hintText: "Name",
                hintColor: grey),
            SizedBox(
              height: 10.h,
            ),
            MyTextField(
                controller: addAddressController.phone.value,
                hintText: "Phone",
                hintColor: grey),

            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding:  EdgeInsets.all(20.h),
              child: Wrap(
                spacing: 5.0,
                children: List<Widget>.generate(
                  3,
                      (int index) {
                    return ChoiceChip(
                      selectedColor: medicalBlue,
                      label: Text('Item $index'),
                      selected: _value == index,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? index : null;
                        });
                      },
                    );
                  },
                ).toList(),
              ),
            ),
            
            Padding(
              padding:  EdgeInsets.all(10.h),
              child: MyButtons("Done", grey, click: (){

              }, fontSize: 14.sp, height: 40.h,),
            )

          ],
        ),
      ),
    );
  }
}
