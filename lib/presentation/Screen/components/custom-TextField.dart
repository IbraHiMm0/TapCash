import 'package:demo/Component/resources/color_manager.dart';
import 'package:flutter/material.dart';

import 'package:demo/Component/resources/styles_manager.dart';
import 'package:demo/Component/resources/values_manager.dart';

class customField extends StatelessWidget {
   customField({super.key, this.hintText,this.onChanged,required this.icon,this.obs=false,});

    String? hintText;
    Function(String)? onChanged;
   Icon icon;
   bool? obs;
  @override

  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      obscureText: obs!,
      validator: (value) {
        if(value!.isEmpty){
          return 'Phone Number is Required';
        }
        return null;
      },
      style:  getBoldStyle(
        color: ColorManager.grey2,
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintText,
        hintStyle:  getBoldStyle(
            color: ColorManager.grey2,
          fontSize: AppSize.s14,
            ),

        // border: const OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.red,
        //   ),
        // ),
        // enabledBorder: const OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.white,
        //   ),
        // ),

        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.grey),
            borderRadius:BorderRadius.circular(AppSize.s12)
        ),


      ),
    );
  }
}
