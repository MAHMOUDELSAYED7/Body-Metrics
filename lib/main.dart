import 'package:bmi_calculator/constant/string.dart';
import 'package:bmi_calculator/helper/app_router.dart';
import 'package:bmi_calculator/helper/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return ScreenUtilInit(
      designSize: const Size(411.4, 867.4),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: MyRoutes.initRoute,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      },
    );
  }
}
