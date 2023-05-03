import 'dart:async';

import 'package:demo/Component/resources/constants.dart';
import 'package:demo/Component/resources/values_manager.dart';
import 'package:flutter/material.dart';

import 'package:demo/Component/resources/assets_manager.dart';
import 'package:demo/Component/resources/color_manager.dart';
import 'package:demo/Component/resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onboardingRoute);

  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      body: const Center(
        child: Image(
          image: AssetImage(
              ImageAssets.splashLogo,
          ),
          height:AppSize.s150,
          width: AppSize.s150,
        ),
      ),
    );
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
