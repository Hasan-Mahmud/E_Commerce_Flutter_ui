import 'package:e_commerce_flutter_ui/src/Screens/login_success/login_success_screen.dart';
import 'package:e_commerce_flutter_ui/src/componants/custom_surffix_icon.dart';
import 'package:e_commerce_flutter_ui/src/componants/default_button.dart';
import 'package:e_commerce_flutter_ui/src/componants/form_error.dart';
import 'package:e_commerce_flutter_ui/src/Screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_flutter_ui/src/helper/keybord_sys.dart';
import 'package:e_commerce_flutter_ui/src/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error)){
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: 30),
          buildPasswordFormField(),
          SizedBox(height: 30),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          // SizedBox(height: 20),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();                
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        // if (value.isNotEmpty && errors.contains(kPassNullError)) {
        //   setState(() {
        //     errors.remove(kPassNullError);
        //     removeError(kPassNullError);
        //   });
        // } else if (value.length >= 8 && errors.contains(kShortPassError)) {
        //   setState(() {
        //     errors.remove(kShortPassError);
        //     removeError(kPassNullError);
        //   });
        //   return "";
        // }
        if (value.isNotEmpty){
          removeError(error:kPassNullError);
        } else if(value.length >= 8){
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        // if (value.isEmpty && !errors.contains(kPassNullError)) {
        //   setState(() {
        //     errors.add(kPassNullError);
        //   });
        //   return "";
        // } else if (value.length < 8 && !errors.contains(kShortPassError)) {
        //   setState(() {
        //     errors.add(kShortPassError);
        //   });
        //   return "";
        // }
        if (value.isEmpty){
          addError(error: kPassNullError);
          return "";
        }else if (value.length <8){
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/lock.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        // if (value.isNotEmpty && errors.contains(kEmailNullError)) {
        //   setState(() {
        //     errors.remove(kEmailNullError);
        //   });
        // } else if (emailValidatorRegExp.hasMatch(value) &&
        //     errors.contains(kInvalidEmailError)) {
        //   setState(() {
        //     errors.remove(kInvalidEmailError);
        //   });
        // }
        if(value.isNotEmpty){
          removeError(error: kEmailNullError);
        }else if (emailValidatorRegExp.hasMatch(value)){
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        // if (value.isEmpty && !errors.contains(kEmailNullError)) {
        //   setState(() {
        //     errors.add(kEmailNullError);
        //   });
        //   return "";
        // } else if (!emailValidatorRegExp.hasMatch(value) &&
        //     !errors.contains(kInvalidEmailError)) {
        //   setState(() {
        //     errors.add(kInvalidEmailError);
        //   });
        //   return "";
        // }
        if(value.isEmpty){
          addError(error: kEmailNullError);
          return "";
        }else if (!emailValidatorRegExp.hasMatch(value)){
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/mail.svg",
        ),
      ),
    );
  }
}
