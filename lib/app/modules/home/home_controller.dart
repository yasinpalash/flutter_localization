import 'dart:ui';

import 'package:get/get.dart';

class HomeController extends GetxController {
  // Example state management in controller
  RxString language = 'en'.obs;

  // Method to change language
  void changeLanguage(String langCode) {
    language.value = langCode;
    Get.updateLocale(Locale(langCode));
  }
}
