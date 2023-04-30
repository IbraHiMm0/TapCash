import 'package:demo/presentation/resources/assets_manager.dart';
import 'package:demo/presentation/resources/color_manager.dart';
import 'package:demo/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../presentation/resources/routes_manager.dart';
import '../../presentation/resources/styles_manager.dart';
import '../components/custom-TextField.dart';
import '../components/customButton.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}


bool isPass=true;

GlobalKey<FormState> formKey = GlobalKey();

class _LoginViewState extends State<LoginView> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s18),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: AppSize.s150,
              ),
              const Image(
                image: AssetImage(ImageAssets.splashLogo),
                height: AppSize.s70,
                width: AppSize.s70,
              ),
              const SizedBox(
                height: AppSize.s24,
              ),
              Row(
                children:  [
                  Text(
                    'Login',
                    style: getBoldStyle(
                        color: ColorManager.titleBlack,
                        fontSize: AppSize.s24),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s24,
              ),
              customField(
                icon:  Icon(
                  Icons.phone_outlined,
                  color: ColorManager.primary,
                ),
                hintText: 'Phone Number',
                numForm: 11,
                valid: (value) {
                  String pattern = r'^(01)[0-9]{9}$'; // condition to enter 11 numbers and must start with 01
                  RegExp regExp =  RegExp(pattern);

                  if(value!.isEmpty){
                    return 'Phone Number is Required';
                  }
                  else if (!regExp.hasMatch(value)) {
                    return 'Please enter valid mobile number';
                  }
                  return null;
                }, //validator
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: AppSize.s30,
              ),
              customField(
                icon:  Icon(
                    Icons.lock_outline,
                  color: ColorManager.primary,
                ),
                obs: isPass,
                hintText: 'Password',
                numForm: 24,
                valid: (value) {
                  if(value!.isEmpty){
                    return 'Password is Required';
                  }
                  else if(value.length <= 8){
                    return 'Password should contain more than 8 characters';
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                suffix: IconButton(
                  onPressed: (){
                    setState(() {
                      isPass = !isPass;
                    });
                  },
                  icon: Icon(
                    isPass? Icons.visibility:Icons.visibility_off ,
                    color: ColorManager.lightPrimary,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.s14,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, Routes.forgotPasswordRoute);
                      },
                      child: Text(
                        ' Forgot Password?',
                        style: getRegularStyle(
                            color: ColorManager.blueArrow,
                            fontSize: AppSize.s14),
                      ),
                    ), //on click it navigate
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.s14,
              ),
              customButton(
                text: 'Login',
                color: ColorManager.blueArrow,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    setState(() {});
                    Navigator.pushReplacementNamed(
                        context, Routes.splashRoute);
                      setState(() {});
                  }
                },
              ),
              const SizedBox(
                height: AppSize.s14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New to Tap Cash ?',
                    style: getRegularStyle(
                        color: ColorManager.titleBlack,
                      fontSize: AppSize.s16
                        ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, Routes.registerRoute);
                    },
                    child: Text(
                      ' Register',
                      style: getBoldStyle(
                          color: ColorManager.blueArrow,
                          fontSize: AppSize.s18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
