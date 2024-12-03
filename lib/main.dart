import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/language/AppTranslations.dart';
import 'app/modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Localization Example',
      translations: AppTranslations(), // Pass your translations here
      locale: Get.deviceLocale, // Set the initial locale (can also be a default locale)
      fallbackLocale: const Locale('en', 'US'), // Fallback locale if translation is not found
      home: const HomePage(),
    );
  }
}
