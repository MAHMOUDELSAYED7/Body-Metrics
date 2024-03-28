import 'package:bmi_calculator/constant/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'view/operation.dart';
import 'view/result.dart';
import 'view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.4, 867.4),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: MyRoutes.operationRoute,
          routes: {
            MyRoutes.initRoute: (context) => const SplashScreen(),
            MyRoutes.operationRoute: (context) => const OperationScreen(),
            MyRoutes.resultRoute: (context) => const ResultScreen(),
          },
        );
      },
    );
  }
}
