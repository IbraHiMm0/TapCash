import 'package:demo/presentation/resources/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../presentation/resources/assets_manager.dart';
import '../../presentation/resources/color_manager.dart';
import '../../presentation/resources/routes_manager.dart';
import '../../presentation/resources/styles_manager.dart';
import '../../presentation/resources/values_manager.dart';
import '../components/custom-TextField.dart';
import '../components/customButton.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

GlobalKey<FormState> formKey = GlobalKey();

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  void back() {
    Navigator.pushReplacementNamed(context, Routes.loginRoute); // goto screen
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.mainColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: back,
            child: Text(
              'Back',
              style: TextStyle(
                color: ColorManager.grey2,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: ColorManager.mainColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s24), //padding from left
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const Image(
                image: AssetImage(ImageAssets.forgotPassword),
                height: AppSize.s350,
                width: AppSize.s350,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    'Forgot Password !',
                    style: getBoldStyle(
                        color: ColorManager.titleBlack,
                        fontSize: AppSize.s30),
                  ),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                  Text(
                    AppStrings.donTWorry,
                    style: getLightStyle(
                        color: ColorManager.grey2,
                        fontSize: AppSize.s18),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s24,
              ),
              customField(
                icon:  Icon(
                  Icons.email_outlined,
                  color: ColorManager.primary,
                ),
                obs: false,
                hintText: 'E-mail',
                numForm: 34,
                valid: (value) {
                  if(value!.isEmpty){
                    return 'E-mail is Required';
                  }
                  return null;
                }, // validator
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: AppSize.s30,
              ),
              customButton(
                text: 'Submit',
                color: ColorManager.blueArrow,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    setState(() {});

                    Navigator.pushReplacementNamed(
                        context, Routes.verificationRoute);
                    setState(() {});

                  }
                },
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
