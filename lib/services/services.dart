import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class LanguageService extends GetxService {
  static const String _selectedLanguageKey = 'selectedLanguage';
  late SharedPreferences _prefs;

  Future<LanguageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    String? langCode = _prefs.getString(_selectedLanguageKey);
    if (langCode != null) {
      _setLocale(langCode);
    }
    return this;
  }

  Future<void> saveLanguage(String langCode) async {
    await _prefs.setString(_selectedLanguageKey, langCode);
    _setLocale(langCode);
  }

  void _setLocale(String langCode) {
    Locale locale = Locale(langCode);
    Get.updateLocale(locale);
  }

  Locale? getSavedLocale() {
    String? langCode = _prefs.getString(_selectedLanguageKey);
    if (langCode != null) {
      return Locale(langCode);
    }
    return null;
  }
}
