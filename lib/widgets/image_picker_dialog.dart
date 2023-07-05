
import 'package:flutter/material.dart';
import 'package:test_shopping/utils/color_constant.dart';
import 'package:test_shopping/widgets/my_buttons.dart';
import 'package:test_shopping/widgets/my_text.dart';

class ImagePickDialogBox extends StatelessWidget {
  final VoidCallback cameraClick;
  final VoidCallback galleryClick;
  const ImagePickDialogBox({Key? key, required this.cameraClick, required this.galleryClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
            MyText(text: 'Choose Images', fontName: 'baloo', fontSize: 20,
                paddingLeft: 20,paddingRight: 20,paddingTop: 20,paddingBottom: 10),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  MyButtons('Open Camera', blueColor, click: cameraClick, fontSize: 16,height: 40),
                  const SizedBox(height: 20),
                  MyButtons('Open Gallery', blueColor, click: galleryClick, fontSize: 16,height: 40),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
