import 'package:flutter/material.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../presentation/resources/assets_manager.dart';
import '../../presentation/resources/color_manager.dart';
import '../../presentation/resources/routes_manager.dart';
import '../../presentation/resources/styles_manager.dart';
import '../../presentation/resources/values_manager.dart';
import '../components/custom-TextField.dart';
import '../components/customButton.dart';


class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

bool isPass=true;
bool isPass2=true;
final TextEditingController _pass = TextEditingController();
final TextEditingController _confirmPass = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey();

class _ResetPasswordViewState extends State<ResetPasswordView> {
  void back() {
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.white,
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
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const Image(
                image: AssetImage(ImageAssets.resetPassword),
                height: AppSize.s350,
                width: AppSize.s350,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    'Reset Password !',
                    style: getBoldStyle(
                        color: ColorManager.titleBlack,
                        fontSize: AppSize.s30),
                  ),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s18,
              ),
              customField(
                hintText: 'New Password',
                controller: _pass,
                numForm: 24,
                valid: (value){
                  if(value!.isEmpty) {
                    return 'Enter The New Password';
                  }
                  else if(value.length <= 8){
                    return 'Password should contain more than 8 characters';
                  }
                  return null;
                },
                icon:  Icon(
                  Icons.lock_outline,
                  color: ColorManager.primary,

                ),
                obs: isPass2,
                keyboardType: TextInputType.visiblePassword,
                suffix: IconButton(
                  onPressed: (){
                    setState(() {
                      isPass2 = !isPass2;
                    });
                  },
                  icon: Icon(
                    isPass2? Icons.visibility:Icons.visibility_off ,
                    color: ColorManager.lightPrimary,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.s18,
              ),
              FlutterPwValidator(
                controller: _pass,
                minLength: 8,
                uppercaseCharCount: 2,
                numericCharCount: 2,
                specialCharCount: 1,
                width: 400,
                height: 130,
                onSuccess: () {
                  print("MATCHED");
                  ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                      content:  Text("Password is matched")));
                },
                onFail: () {
                  print("NOT MATCHED");
                },
              ), //validator
              const SizedBox(
                height: AppSize.s30,
              ),
              customField(
                numForm: 24,
                hintText: 'Confirm New Password',
                controller: _confirmPass,
                icon:  Icon(
                  Icons.lock_person_outlined,
                  color: ColorManager.primary,
                ),
                obs: isPass,
                valid: (val){
                  if(val!.isEmpty) {
                    return 'Confirm The New Password ';
                  }
                  else if(val != _pass.text) {
                    return 'The Password Not Matching';
                  }
                  else if(val.length <= 8){
                    return 'Password should contain more than 8 characters';
                  }
                  return null;
                },
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

                keyboardType: TextInputType.visiblePassword,
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
