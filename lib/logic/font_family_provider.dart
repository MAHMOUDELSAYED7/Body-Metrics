import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constant/string.dart';
import '../helper/cache.dart';

final fontProvider = ChangeNotifierProvider<FontController>((ref) {
  return FontController();
});

class FontController extends ChangeNotifier {
  FontController() {
    _initializeFont();
  }

  String fontFamily = MyFontFamily.poppins;

  Future<void> _initializeFont() async {
    fontFamily =
        await CacheData.getdata(key: "fontFamily") ?? MyFontFamily.poppins;
    notifyListeners();
  }

  Future<void> onFontFamilyChanged(String? value) async {
    if (value == null || value == fontFamily) return;

    fontFamily = value;
    await CacheData.setData(key: "fontFamily", value: fontFamily);

    notifyListeners();
  }
}
