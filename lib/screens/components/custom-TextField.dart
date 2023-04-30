import 'package:demo/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../presentation/resources/styles_manager.dart';
import '../../presentation/resources/values_manager.dart';


class customField extends StatelessWidget {
   customField({this.hintText,this.numForm,this.valid,this.controller,this.onChanged,this.suffix, this.icon,required this.keyboardType,this.obs=false,});

    String? hintText;
    Function(String)? onChanged;
   Icon? icon;
   IconButton? suffix;
   bool? obs;
   int? numForm;
   String? Function(String?)? valid;
   TextEditingController? controller;
   TextInputType keyboardType;
  @override

  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(numForm),
      ],
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obs!,
      validator: valid,
      cursorColor: ColorManager.primary,
      style:  getRegularStyle(
        color: ColorManager.inputBlack,
        fontSize: AppSize.s16,
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintText,
        hintStyle:  getRegularStyle(
            color: ColorManager.grey2,
          fontSize: AppSize.s16,
            ),

        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.grey,
          ),
          borderRadius:BorderRadius.circular(AppSize.s12),
        ), //when i see field
        suffixIcon:suffix,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.lightPrimary,),
            borderRadius:BorderRadius.circular(AppSize.s30),
        ),//when i click on fields

      ),
    );
  }
}
