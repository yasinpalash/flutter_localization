import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('language_change'.tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Center(
          child: Column(
            children: [
              Text(
                'app_name'.tr,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'my_name'.tr,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'description'.tr,
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
                        Get.updateLocale(const Locale('en', 'US'));
                      },
                      child: Text('english'.tr)),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Get.updateLocale(const Locale('bn', 'BD'));
                      },
                      child: Text('bangla'.tr)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
