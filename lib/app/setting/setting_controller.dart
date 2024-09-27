import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settingcontroller extends GetxController {
  var seletedValuetype = "language".obs;
  updateValueType(value) {
    seletedValuetype.value = value;
    update();
  }

   changeLanguage(String languageCode, String countryCode) {
    var language = Locale(languageCode, countryCode);
    Get.updateLocale(language);
  }
}
