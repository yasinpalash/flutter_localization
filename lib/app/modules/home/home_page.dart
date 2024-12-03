import 'package:flutter/material.dart';
import 'package:flutter_localization/app/language/app_text.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate the HomeController using Get.put() to access the controller's methods and state
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.languageChange.tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Center(
          child: Column(
            children: [
              Text(
                AppText.appName.tr,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                AppText.myName.tr,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                AppText.description.tr,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        controller.changeLanguage('en');
                      },
                      child: Text(AppText.english.tr)),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        controller.changeLanguage('bn');
                      },
                      child: Text(AppText.bangla.tr)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}