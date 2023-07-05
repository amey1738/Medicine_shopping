import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:test_shopping/utils/color_constant.dart';


class Tools {

  static void setStatusBarColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  static String allCaps(String str) {
    if(str.isNotEmpty){
      return str.toUpperCase();
    }
    return str;
  }
  static TextStyle? subhead(BuildContext context){
    return Theme.of(context).textTheme.subtitle1;
  }
  static TextStyle medium(BuildContext context){
    return Theme.of(context).textTheme.subtitle1!.copyWith(
      fontSize: 18,
    );
  }
  static TextStyle? caption(BuildContext context){
    return Theme.of(context).textTheme.caption;
  }

  static String getFormattedCardNo(String cardNo){
    if(cardNo.length < 5) return cardNo;
    return cardNo.replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} ");
  }

  static String getFormattedDateSimple(int time) {
    DateFormat newFormat =  DateFormat("dd-MM-yyyy");
    return newFormat.format( DateTime.fromMillisecondsSinceEpoch(time));
  }

  appBar({bool isBack = false}) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: isBack,
      centerTitle: true,
      title: Image.asset('images/nft/ic_app_logo.png', fit: BoxFit.cover, width: 160),
    );
  }

  static void statusBar(){
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      //systemNavigationBarColor: Colors.blue,
      statusBarColor: greenColor, // status bar color
    ));
  }

  static String generateRandomString(int length) {
    var random = Random();
    const chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return String.fromCharCodes(Iterable.generate(length, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
  }

}
