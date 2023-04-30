import 'dart:async';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:demo/presentation/resources/assets_manager.dart';
import 'package:demo/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../presentation/resources/color_manager.dart';
import '../../presentation/resources/styles_manager.dart';

class ValueWithdrawView extends StatefulWidget {
  const ValueWithdrawView({Key? key}) : super(key: key);

  @override
  State<ValueWithdrawView> createState() => _ValueWithdrawViewState();
}

class _ValueWithdrawViewState extends State<ValueWithdrawView> {

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
                Center(
                  child: Text('ATM Cash Withdraw',
                    style: getRegularStyle(color: ColorManager.titleBlack,fontSize: AppSize.s20),),
                ),
                const SizedBox(
                  height:AppSize.s50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomStart,
                        children: [
                          Container(
                            height: 90,
                            child: TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(9),
                            ],
                            keyboardType: TextInputType.phone,
                            cursorColor: ColorManager.primary,
                            style:  getBoldStyle(
                              color: ColorManager.inputBlack,
                              fontSize: AppSize.s50,
                            ),
                            showCursor: false,
                            decoration: InputDecoration(
                              hintText: 'Enter Value',
                              hintStyle:  getRegularStyle(
                                color: ColorManager.grey2,
                                fontSize: AppSize.s20,
                              ),

                              enabledBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ColorManager.mainColor,
                                ),
                                borderRadius:BorderRadius.circular(AppSize.s12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: ColorManager.mainColor,),
                                borderRadius:BorderRadius.circular(AppSize.s16),
                              ),


                            ),
                        ),
                          ),
                          Text('EGP',
                            style: getRegularStyle(color: ColorManager.inputBlack,fontSize: AppSize.s18),),

                        ],
                      ),
                      const SizedBox(
                        height:AppSize.s50,
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: AnimatedButton(
                    color: ColorManager.blueArrow,
                    text: 'Continue',
                    buttonTextStyle:
                    getRegularStyle(color: ColorManager.white,fontSize: AppSize.s18),
                    pressEvent: () {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.success,
                        headerAnimationLoop: false,
                        animType: AnimType.bottomSlide,
                        title: 'Thank you for Query',
                        btnOkColor: ColorManager.blueArrow,
                        desc: 'You can withdraw now',
                        descTextStyle:  TextStyle(
                          letterSpacing: 0.1,
                          wordSpacing: 1.1,
                          color: ColorManager.grey,
                          height: 2,
                        ),
                        buttonsTextStyle:
                        getRegularStyle(color: ColorManager.white,fontSize: AppSize.s18),
                        showCloseIcon: false,
                        btnOkOnPress: () {},
                      ).show();
                    },
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

}
