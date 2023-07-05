
import 'package:flutter/services.dart';

class ValidationUtils {

  var engHindFormatter = FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Zऀ-ॿ\s]+$'));
  var spaceNotAllowed = FilteringTextInputFormatter.deny(' ');
  var onlyDigitsAllowed =  FilteringTextInputFormatter.allow(RegExp("[0-9]"));

  static String? validateName(String value) {
    if (value.toString().isEmpty) {
      return "Enter your first name";
    } else {
      return null;
    }
  }

  static String? globleValidateName(String value,String validateHint) {
    if (value.toString().isEmpty) {
      return validateHint;
    } else {
      return null;
    }
  }

  static String? validateLastName(String value) {
    if (value.toString().isEmpty) {
      return "Enter your last name";
    } else {
      return null;
    }
  }

  static String? validateEmail(String value) {
    Pattern pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return 'Enter valid emil address.';
    } else {
      return null;
    }
  }

  static String? validateCityName(String value) {
    if (value.toString().isEmpty) {
      return "Enter your City/Village name";
    } else {
      return null;
    }
  }

  static String? validatePinCode(String value) {
    if (value.toString().isEmpty) {
      return "Enter your PIN CODE";
    } else if(value.length != 6) {
      return "Enter valid PIN CODE";
    } else{
    return null;
    }
  }

  static String? validatePhoneNum(String value) {
    if (value.toString().isEmpty) {
      return "Enter your Phone Number";
    } else if(value.length != 6) {
      return "Enter Phone Number";
    } else{
      return null;
    }
  }

  static String? validateArea(String value) {
    if (value.toString().isEmpty) {
      return "Enter area of goshala/gotha";
    } else {
      return null;
    }
  }

  static String? validateCapacity(String value) {
    if (value.toString().isEmpty) {
      return "Enter capacity of goshala/gotha";
    } else {
      return null;
    }
  }

  static String? validateCurrentlyAvailableAnimals(String value) {
    if (value.toString().isEmpty) {
      return "Enter currently available animals count";
    } else {
      return null;
    }
  }

  static String? totalNoOfAnimals(String value) {
    if (value.toString().isEmpty) {
      return "Enter total number of animals count";
    } else {
      return null;
    }
  }

  static String? pashuAadharNum(String value) {
    if (value.toString().isEmpty) {
      return "Enter Pashu Aadhar number";
    } else {
      return null;
    }
  }

  static String? animalName(String value) {
    if (value.toString().isEmpty) {
      return "Enter animal name";
    } else {
      return null;
    }
  }

  static String? animalDesc(String value) {
    if (value.toString().isEmpty) {
      return "Enter animal desc";
    } else {
      return null;
    }
  }

  static String? animalFullDesc(String value) {
    if (value.toString().isEmpty) {
      return "Enter animal full desc";
    } else {
      return null;
    }
  }

  static String? animalDateOfBirth(String value) {
    if (value.toString().isEmpty) {
      return "Enter animal date of birth";
    } else {
      return null;
    }
  }

  static String? animalPrice(String value) {
    if (value.toString().isEmpty) {
      return "Enter animal price";
    } else {
      return null;
    }
  }





}
