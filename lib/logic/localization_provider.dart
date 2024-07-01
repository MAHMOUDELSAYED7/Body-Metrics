import 'package:body_metrics/helper/cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../generated/l10n.dart';

final localeProvider = ChangeNotifierProvider<LocaleController>((ref) {
  return LocaleController();
});

class LocaleController extends ChangeNotifier {
  LocaleController() {
    _initializeLang();
  }

  String lang = "en";

  Locale get locale => Locale(lang);

  Future<void> _initializeLang() async {
    lang = await CacheData.getdata(key: "locale") ?? "en";
    notifyListeners();
  }

  Future<void> onLocalizationChanged(String? value) async {
    if (value == null || value == lang) return;

    lang = value;
    await CacheData.setData(key: "locale", value: lang);

    await S.load(Locale(lang));
    notifyListeners();
  }
}
