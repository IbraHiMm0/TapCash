import 'package:demo/presentation/resources/assets_manager.dart';
import 'package:demo/presentation/resources/color_manager.dart';
import 'package:demo/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../components/custom-TextField.dart';
import '../components/customButton.dart';
import '../resources/routes_manager.dart';
import '../resources/styles_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

String? email;
String? password;
bool isLoading = false;
GlobalKey<FormState> formKey = GlobalKey();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: ColorManager.mainColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s8),
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
                  hintText: 'Phone',
                  icon:  Icon(
                    Icons.phone,
                    color: ColorManager.primary,

                  ),
                  onChanged: (p0) {
                    email = p0;
                  },
                ),
                const SizedBox(
                  height: AppSize.s16,
                ),
                customField(
                  icon:  Icon(
                      Icons.lock,
                    color: ColorManager.primary,
                  ),
                  obs: true,
                  hintText: 'Password',
                  onChanged: (p0) {
                    password = p0;
                  },
                ),
                const SizedBox(
                  height: AppSize.s24,
                ),
                customButton(
                  text: 'Login',
                  onTap: () async {
                    // if (formKey.currentState!.validate()) {
                    //   isLoading = true;
                    //   setState(() {});
                    //   try {
                    //     await loginUser(email, password);
                    //     Navigator.pushNamed(context, chatPage.id,arguments: email);
                    //   } on FirebaseAuthException catch (e) {
                    //     if (e.code == 'user-not-found') {
                    //       showSnackBar(
                    //           context, 'User Not Found ,Try Again');
                    //     } else if (e.code == 'wrong-password') {
                    //       showSnackBar(context,
                    //           'Wrong password provided for that user,Try Again');
                    //     }
                    //     isLoading = false;
                    //     setState(() {});
                    //   }
                    // }
                  },
                ),
                const SizedBox(
                  height: AppSize.s14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'don\'t have an account? ',
                      style: getBoldStyle(
                          color: ColorManager.white,
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
                            color: ColorManager.titleBlack,
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
      ),
    );
  }

// Future<void> loginUser(String? email, String? password) async {
//   UserCredential user = await FirebaseAuth.instance
//       .signInWithEmailAndPassword(
//       email: email!, password: password!);
// }
}
