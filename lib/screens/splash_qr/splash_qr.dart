import 'dart:async';

import 'package:demo/presentation/resources/constants.dart';
import 'package:demo/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

import '../../presentation/resources/assets_manager.dart';
import '../../presentation/resources/color_manager.dart';
import '../../presentation/resources/routes_manager.dart';
import '../../presentation/resources/styles_manager.dart';


class QrSplashView extends StatefulWidget {
  const QrSplashView({Key? key}) : super(key: key);

  @override
  State<QrSplashView> createState() => _QrSplashViewState();
}

class _QrSplashViewState extends State<QrSplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.accessQrRoute);
  }
  @override
  void initState() {
    _startDelay();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cash Withdraw',
          style: getBoldStyle(
            color: ColorManager.white,
            fontSize: AppSize.s20,
          ),
        ),
        backgroundColor: ColorManager.primary,
        elevation: 0,
      ),
      backgroundColor: ColorManager.primary,
      body: ListView(
        children:  [
          const SizedBox(
            height:AppSize.s150,
          ),
          Container(
            height: 800.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s50),
              color: ColorManager.mainColor,
            ),
            child: ListView(
              children:   [
                const SizedBox(
                  height:AppSize.s8,
                ),
                const Center(
                  child: Image(
                    image: AssetImage(ImageAssets.dash),
                    height: AppSize.s50,
                    width: AppSize.s50,
                  ),
                ),
                const SizedBox(
                  height:AppSize.s50,
                ),
                const Image(
                  image: AssetImage(ImageAssets.qrCodeImg),
                  height: AppSize.s230,
                  width: AppSize.s230,
                ),
                const SizedBox(
                  height:AppSize.s50,
                ),
                Center(
                  child: Text('Scan a Qr Code to withdraw cash',
                  style: getBoldStyle(color: ColorManager.titleBlack,fontSize: AppSize.s20),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
