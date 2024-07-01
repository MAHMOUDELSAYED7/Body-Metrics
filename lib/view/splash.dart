import 'package:body_metrics/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';

import '../constant/color.dart';
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
    _goToOperationScreen();
  }

  _goToOperationScreen() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, MyRoutes.operationRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.black,
      body: MyLoadingIndicator(),
    );
  }
}
