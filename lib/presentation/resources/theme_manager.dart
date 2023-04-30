import 'package:demo/presentation/resources/color_manager.dart';
import 'package:demo/presentation/resources/font_manager.dart';
import 'package:demo/presentation/resources/styles_manager.dart';
import 'package:demo/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //Primary
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightGrey,
    primaryColorDark: ColorManager.darkGery,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,

    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.white,
      elevation: AppSize.s4,
      shadowColor: ColorManager.grey,
      titleTextStyle:
          getRegularStyle(color: ColorManager.white, fontSize: AppSize.s16),
    ),
    //ButtonTheme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorManager.primary,
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(color: ColorManager.white, fontSize: AppSize.s16),
          backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12))),
    ),
    //TextTheme
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(
          color: ColorManager.white, fontSize: AppSize.s20),
      headlineLarge: getSemiBoldStyle(
          color: ColorManager.darkGery, fontSize: AppSize.s16),
      titleMedium:
          getMediumStyle(color: ColorManager.lightGrey, fontSize: AppSize.s14),
      bodyLarge: getRegularStyle(color: ColorManager.grey1),
      bodySmall: getRegularStyle(color: ColorManager.grey),
    ),

    inputDecorationTheme: InputDecorationTheme(

        contentPadding: const EdgeInsets.all(8),

        hintStyle:
            getRegularStyle(color: ColorManager.grey, fontSize: AppSize.s14),

        labelStyle:
            getMediumStyle(color: ColorManager.grey, fontSize: AppSize.s14),

        errorStyle: getRegularStyle(color: ColorManager.error),


        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),


        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),


        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),


        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)))),
  );
}
