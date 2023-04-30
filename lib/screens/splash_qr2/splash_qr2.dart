import 'dart:async';

import 'package:demo/presentation/resources/constants.dart';
import 'package:demo/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

import '../../presentation/resources/assets_manager.dart';
import '../../presentation/resources/color_manager.dart';
import '../../presentation/resources/routes_manager.dart';
import '../../presentation/resources/styles_manager.dart';


class QrSplashView2 extends StatefulWidget {
  const QrSplashView2({Key? key}) : super(key: key);

  @override
  State<QrSplashView2> createState() => _QrSplashView2State();
}

class _QrSplashView2State extends State<QrSplashView2> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.payRoute);
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
                  child: Text('scan a Qr Code to Pay Faster',
                    style: getBoldStyle(color: ColorManager.grey,fontSize: AppSize.s20),),
                ),
                const SizedBox(
                  height:AppSize.s50,
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                        icon:  Icon(
                          size: AppSize.s30,
                      Icons.add_photo_alternate_outlined,
                      color: ColorManager.primary,
                    ),
                    ),
                    Text('Show My Qr Code',
                      style: getLightStyle(color: ColorManager.primary,fontSize: AppSize.s12),),
                    const SizedBox(
                      height:AppSize.s50,
                    ),
                  ],
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
