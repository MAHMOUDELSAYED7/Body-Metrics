import 'package:bmi_calculator/constant/string.dart';
import 'package:bmi_calculator/helper/app_router.dart';
import 'package:bmi_calculator/helper/cache.dart';
import 'package:bmi_calculator/helper/screen_size.dart';
import 'package:bmi_calculator/logic/font_family_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'logic/localization_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.cacheDataInit();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenSize.init(context);
    return ScreenUtilInit(
      designSize: const Size(411.4, 867.4),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          builder: (context, widget) {
            final mediaQueryData = MediaQuery.of(context);
            final scaledMediaQueryData = mediaQueryData.copyWith(
              textScaler: TextScaler.noScaling,
            );
            return MediaQuery(
              data: scaledMediaQueryData,
              child: widget!,
            );
          },
          title: 'BMI Calculator',
          theme: ThemeData(fontFamily: ref.watch(fontProvider).fontFamily),
          locale: ref.watch(localeProvider).locale,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          initialRoute: MyRoutes.initRoute,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      },
    );
  }
}
