import 'package:demo/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pinput/pinput.dart';
import '../../presentation/resources/assets_manager.dart';
import '../../presentation/resources/color_manager.dart';
import '../../presentation/resources/routes_manager.dart';
import '../../presentation/resources/styles_manager.dart';
import '../../presentation/resources/values_manager.dart';
import '../components/customButton.dart';


class VerfiyView extends StatefulWidget {
  const VerfiyView({Key? key}) : super(key: key);

  @override
  State<VerfiyView> createState() => _VerfiyViewState();
}

String? email;
String? password;
bool isLoading = false;
GlobalKey<FormState> formKey = GlobalKey();

class _VerfiyViewState extends State<VerfiyView> {
  // void back() {
  //   Navigator.pushReplacementNamed(context, Routes.loginRoute);
  // }
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: ColorManager.mainColor,
        //   elevation: 0,
        //   actions: [
        //     TextButton(
        //       onPressed: back,
        //       child: Text(
        //         'Back',
        //         style: TextStyle(
        //           color: ColorManager.grey2,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        backgroundColor: ColorManager.mainColor,
        body: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: AppSize.s50,
              ),
              const Image(
                image: AssetImage(ImageAssets.checkVerification),
                height: AppSize.s50,
                width: AppSize.s50,
              ),

              const Image(
                image: AssetImage(ImageAssets.forgotPassword),
                height: AppSize.s300,
                width: AppSize.s300,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      AppStrings.verfiy,
                      style: getRegularStyle(
                          color: ColorManager.inputBlack,
                          fontSize: AppSize.s30),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s8,
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s30),
                child: Pinput(
                  onCompleted: (pin) => print(pin),
                  length: 6,
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'Pin Number is Required';
                    }
                    else if(value.length <= 5){
                      return 'Pin Number should contain 6 characters';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: AppSize.s24,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn\'t receive a code ? ',
                    style: getRegularStyle(
                        color: ColorManager.titleBlack,
                        fontSize: AppSize.s16
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, Routes.forgotPasswordRoute);
                    },
                    child: Text(
                      'Request again',
                      style: getBoldStyle(
                          color: ColorManager.blueArrow,
                          fontSize: AppSize.s18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s30,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
                child: customButton(
                  text: 'Submit',
                  color: ColorManager.blueArrow,
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      // try {
                      //   await loginUser(email, password);
                      Navigator.pushReplacementNamed(
                          context, Routes.resetPasswordRoute);                      // } on FirebaseAuthException catch (e) {
                      //   if (e.code == 'user-not-found') {
                      //     showSnackBar(
                      //         context, 'User Not Found ,Try Again');
                      //   } else if (e.code == 'wrong-password') {
                      //     showSnackBar(context,
                      //         'Wrong password provided for that user,Try Again');
                      //   }
                      isLoading = false;
                      setState(() {});
                      // }
                    }
                  },
                ),
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
