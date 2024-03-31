import 'package:bmi_calculator/helper/chache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../generated/l10n.dart';

final localeProvider = ChangeNotifierProvider<LocaleController>((ref) {
  return LocaleController();
});

class LocaleController extends ChangeNotifier {
  String lang = "en";

  Locale get locale => Locale(CacheData.getdata(key: "locale") ?? "en");
  onLocalizationChanged(String? value) async {
    lang = value!;
    await CacheData.setData(key: "locale", value: lang);
    if (lang == "en") {
      S.load(const Locale('en'));
    } else {
      S.load(const Locale('ar'));
    }

    notifyListeners();
  }
}
