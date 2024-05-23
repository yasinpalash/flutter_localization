import 'package:flutter_localization/app/language/ban.dart';
import 'package:flutter_localization/app/language/eng.dart';
import 'package:get/get.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": eng,
        "bn_BD": ban,
      };
}
