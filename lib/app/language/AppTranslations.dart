import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      "app_name": "Localization",
      "my_name": "Yasin Mia Palash",
      "description": "This is made for learning",
      "english": "English",
      "bangla": "Bangla",
      "language_change": "Language Change"
    },
    'bn_BD': {
      "app_name": "স্থানীয়করণ",
      "my_name": "ইয়াসিন মিয়া পলাশ",
      "description": "এটি শেখার জন্য তৈরি করা হয়েছে",
      "english": "ইংরেজী",
      "bangla": "বাংলা",
      "language_change": "ভাষা পরিবর্তন"
    },
  };
}
