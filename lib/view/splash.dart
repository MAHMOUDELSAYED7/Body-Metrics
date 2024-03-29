import 'package:bmi_calculator/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';

import '../constant/string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToOperationScreen();
  }

  goToOperationScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, MyRoutes.operationRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyLoadingIndicator(),
        ],
      ),
    );
  }
}
