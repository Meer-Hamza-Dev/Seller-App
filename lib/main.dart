import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/localization/l10n/l10n.dart';
import 'package:seller_app/routes/app_routes.dart';
import 'package:seller_app/services/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    Get.putAsync(() => LanguageService().init());
  } catch (e) {
    print('Fialed to translate');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      translations: LocalString(),
      locale: Get.find<LanguageService>().getSavedLocale(),
      supportedLocales: [
        Locale('en'),
        Locale('pa'),
        Locale('es'),
        Locale('it'),
        Locale('de'),
        Locale('fr'),
        Locale('tl'),
        Locale('zh'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      fallbackLocale: Locale('en', 'US'),
    );
  }
}
