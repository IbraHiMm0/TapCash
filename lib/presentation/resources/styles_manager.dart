import 'package:demo/presentation/resources/font_manager.dart';
import 'package:demo/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize,FontWeight fontWeight,Color color){
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      color: color,
      fontWeight: fontWeight
  );
}

TextStyle getRegularStyle({double fontSize=AppSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

TextStyle getMediumStyle({double fontSize=AppSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

TextStyle getLightStyle({double fontSize=AppSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

TextStyle getBoldStyle({double fontSize=AppSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}
TextStyle getSemiBoldStyle({double fontSize=AppSize.s12,required Color color}){
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
