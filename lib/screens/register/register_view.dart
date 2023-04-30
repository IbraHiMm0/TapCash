import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:demo/presentation/resources/string_manager.dart';
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


class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}
bool isPass=true;
bool isPass2=true;


final List<String> items = [
  'For User',
  'For Children',
];

String? selectedValue;

GlobalKey<FormState> formKey = GlobalKey();
TextEditingController _pass = TextEditingController();
TextEditingController _repeatedPass = TextEditingController();
TextEditingController user = TextEditingController();
TextEditingController user1 = TextEditingController();


String? choose; //no radio button will be selected on initial

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: AppSize.s18),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(
                height: AppSize.s100,
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
                    'Sign Up',
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
                hintText: 'First Name',
                numForm: 14, // just 14
                controller: user,
                valid: (value) {
                  if(value!.isEmpty){
                    return 'First Name is Required';
                  }
                  else if(value.length <= 3){
                    return 'You typed a few character';
                  }
                  return null;
                },
                icon:  Icon(
                  Icons.person_outline,
                  color: ColorManager.primary,

                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: AppSize.s12,
              ),
              customField(
                hintText: 'Last Name',
                numForm: 14,
                controller: user1,
                valid: (value) {
                  if(value!.isEmpty){
                    return 'Last Name is Required';
                  }
                  else if(value.length <= 3){
                    return 'You typed a few character';
                  }
                  return null;
                },
                icon:  Icon(
                  Icons.person_outline,
                  color: ColorManager.primary,

                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: AppSize.s12,
              ),
              customField(
                icon:  Icon(
                  Icons.credit_card_outlined,
                  color: ColorManager.primary,
                ),
                obs: false,
                hintText: 'National ID (For User)',
                numForm: 14,
                valid: (value) {
                  if(value!.isEmpty){
                    return 'National ID is Required';
                  }
                  else if(value.length <= 13){
                    return 'National ID should contain 14 characters';
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: AppSize.s12,
              ),
              customField(
                icon:  Icon(
                  Icons.email_outlined,
                  color: ColorManager.primary,
                ),
                obs: false,
                numForm: 34,
                hintText: 'E-mail',
                valid: (value) {
                  if(value!.isEmpty){
                    return 'E-mail is Required';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: AppSize.s12,
              ),
              customField(
                icon:  Icon(
                  Icons.phone_outlined,
                  color: ColorManager.primary,
                ),
                hintText: 'Phone Number',
                numForm: 11,
                valid: (value) {
                  String pattern = r'^(01)[0-9]{9}$'; //must enter 01 and 11 num
                  RegExp regExp =  RegExp(pattern);

                  if(value!.isEmpty){
                    return 'Phone Number is Required';
                  }
                  else if (!regExp.hasMatch(value)) {
                    return 'Please enter valid mobile number';
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: AppSize.s12,
              ),
              customField(
                icon:  Icon(
                  Icons.lock_outline,
                  color: ColorManager.lightPrimary,
                ),
                obs: isPass2,
                hintText: 'Password',
                numForm: 24,

                controller: _pass,
                valid: (value){
                  if(value!.isEmpty) {
                    return 'Password is Required';
                  }
                  else if(value.length <= 7){
                    return 'Password should contain more than 8 characters';
                  }
                  else if(value == user.text) {
                    return 'The Password Match with first Name change it';
                  }
                  else if(value == user1.text) {
                    return 'The Password Match with last Name change it';
                  }
                  return null;
                },
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
                height: AppSize.s12,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: FlutterPwValidator(
                    controller: _pass,
                    minLength: 8,
                    uppercaseCharCount: 1,
                    numericCharCount: 1,
                    specialCharCount: 1,
                    width: 400,
                    height: 130,
                    onSuccess: () {
                      print("MATCHED");
                    },
                    onFail: () {
        print("NOT MATCHED");
        },
                ),
              ),
              const SizedBox(
                height: AppSize.s24,
              ),
              customField(
                icon:  Icon(
                  Icons.lock_person_outlined,
                  color: ColorManager.lightPrimary,
                ),
                obs: isPass,
                controller: _repeatedPass,
                hintText: 'Repeat Password',
                numForm: 24,
                valid: (val){
                  if(val!.isEmpty) {
                    return 'Repeat Password is Required';
                  }
                  else if(val != _pass.text) {
                    return 'The Password Not Matching';
                  }
                  else if(val.length <= 7){
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

              Padding(
                padding: const EdgeInsets.only(left: 180.0),
                child: AnimatedButton(
                  color: ColorManager.mainColor,
                  text: AppStrings.termsTitle,

                  buttonTextStyle:TextStyle(
                    color: ColorManager.blueArrow,
                    fontSize: AppSize.s16,
                    overflow: TextOverflow.ellipsis,
                  ),

                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning,
                      headerAnimationLoop: false,
                      animType: AnimType.bottomSlide,
                      title: 'Careful !',
                      btnOkColor: ColorManager.lightPrimary,
                      desc: AppStrings.terms,
                      descTextStyle: const TextStyle(
                        letterSpacing: 0.1,
                        wordSpacing: 1.1,
                        height: 2,
                      ),
                      buttonsTextStyle:
                      getRegularStyle(color: ColorManager.white,fontSize: AppSize.s18),
                      showCloseIcon: false,
                      btnOkOnPress: () {},
                    ).show();
                  },
                ),
              ),
              const SizedBox(
                height: AppSize.s8,
              ),
              DropdownButtonFormField<String>(
                value: selectedValue,
                hint: const Text(
                  'Choose Your Option',
                ),
                style: getRegularStyle(color: ColorManager.inputBlack,fontSize: AppSize.s14),
                onChanged: (options) =>
                    setState(() => selectedValue = options),

                validator: (value) => value == null ? 'This field required' : null,
                items:
                ['For User', 'For Children'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: AppSize.s8
                ,
              ),
              const SizedBox(
                height: AppSize.s8,
              ),
              customButton(
                text: 'Register',
                color: ColorManager.blueArrow,
                onTap: () async {
                  if (formKey.currentState!.validate()) {

                    setState(() {});
                    if(selectedValue=='For User'){
                      Navigator.pushReplacementNamed(
                          context, Routes.splashRoute);
                    }
                    else{
                      Navigator.pushReplacementNamed(
                          context, Routes.forChildRoute);
                    }
                      setState(() {});
                    // }
                  }
                },
              ),
              const SizedBox(
                height: AppSize.s24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Joined us Before ? ',
                    style: getRegularStyle(
                        color: ColorManager.titleBlack,
                        fontSize: AppSize.s16
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, Routes.loginRoute);
                    },
                    child: Text(
                      'Login',
                      style: getBoldStyle(
                          color: ColorManager.blueArrow,
                          fontSize: AppSize.s18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s50,
              ),

            ],
          ),
        ),
      ),
    );
  }
  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    List<DropdownMenuItem<String>> _menuItems = [];
    for (var item in items) {
      _menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item,
                style:  getRegularStyle(fontSize: AppSize.s14,
                  color: ColorManager.white,)
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(),
            ),
        ],
      );
    }
    return _menuItems;
  }
  List<double> _getCustomItemsHeights() {
    List<double> _itemsHeights = [];
    for (var i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isEven) {
        _itemsHeights.add(40);
      }
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _itemsHeights.add(4);
      }
    }
    return _itemsHeights;
  }
}
