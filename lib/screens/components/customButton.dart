import 'package:demo/presentation/resources/color_manager.dart';
import 'package:demo/presentation/resources/styles_manager.dart';
import 'package:demo/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
   customButton({this.onTap,required this.text,required this.color}) ;
  String text;
  VoidCallback? onTap;
  Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: AppSize.s50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style:  getBoldStyle(color: ColorManager.white,fontSize: AppSize.s16)
          ),
        ),
      ),
    );
  }
}
