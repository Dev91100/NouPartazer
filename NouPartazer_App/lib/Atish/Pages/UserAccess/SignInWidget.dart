import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Atish/components/Buttons/LargeButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Text/HugeText.dart';
import 'package:noupartazer_app/Atish/components/Text/MediumText.dart';
import 'package:noupartazer_app/Devashish/components/Transitions/AllTransitions.dart';
import 'package:noupartazer_app/Koomalai/Pages/BottomNavigation/BusinessBottomNav.dart';
import 'package:noupartazer_app/Koomalai/Pages/BottomNavigation/NGOBottomNav.dart';

class SignInWidget extends StatefulWidget
{
  final BoxConstraints constraints;

  SignInWidget
  (
    this.constraints,
  );

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget>
{
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailCtrl, passwordCtrl;
  bool processing = false;


  @override
  void initState()
  {
    super.initState();
    
    emailCtrl = new TextEditingController();
    passwordCtrl = new TextEditingController();
  }

  bool setValidatorTest()
  {
    bool validatorTest;

    try
    {
      validatorTest = _formKey.currentState.validate();
    } catch (e)
    {
      validatorTest = false;
    }

    return validatorTest;
  }

  void showErrorToast()
  {
    Fluttertoast.showToast
    (
      msg: "Incorrect email or password",
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  Future userLogin() async
  {
    var test = setValidatorTest();

    if(test != true)
    {
      showErrorToast();
      return;
    }

    setState(() {
      processing = true;
    });

    var url = "https://foodsharingapp.000webhostapp.com/SignIn.php";
    var data = 
    {
      "email" : emailCtrl.text,
      "password" : passwordCtrl.text,
    };

    var res = await http.post(url, body:data);

    var interface;

    if(jsonDecode(res.body) == 'ngo')
    {
      interface = NGOBottomNav();
    }
    else if(jsonDecode(res.body) == 'business')
    {
      interface = BusinessBottomNav();
    }

    if(jsonDecode(res.body) != 'false')
    {
      AllTransitions().getTransition
      (
        context: context,
        transitionType: 'downToUp',
        onPress: interface,
      );
    }
    else
    {
      Fluttertoast.showToast
      (
        msg: "Email or password incorrect",
        toastLength: Toast.LENGTH_SHORT,
      );
    }
    
    setState(() {
      processing = false;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Form
    (
      key: _formKey,

      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Container
          (
            child: FittedBox
            (
              fit: BoxFit.contain,
              child: HugeText(text: 'Welcome'),
            ),
          ),

          Container
          (
            margin: EdgeInsets.only
            (
              top: widget.constraints.maxHeight * 0.01,
              bottom: widget.constraints.maxHeight * 0.01,
            ),
            child: MediumText
            (
              text: 'Sign in to continue',
              textColor: Colors.white,
            ),
          ),

          CustomTextField
          (
            textColor: Colors.white,
            controller: emailCtrl,
            labelText: 'Email',
            labelSize: 20,
            iconSize: 25,
            labelColor: Colors.white,
            errorColor: Colors.white,
            errorSize: 14,
            suffixIcon: Icons.email_outlined,
            iconColor: Colors.white,
            hasBorder: true,
            fillColor: Colors.transparent,
            borderColor: Colors.white,
            borderWidth: 2,
            errorBorderColor: Colors.white,
            focusedErrorBorderColor: Colors.white,
            keyboardType: TextInputType.emailAddress,
            addAsterix: false,
            optional: true,
          ),

          CustomTextField
          (
            obscureText: true,
            textColor: Colors.white,
            controller: passwordCtrl,
            labelText: 'Password',
            labelSize: 20,
            iconSize: 25,
            labelColor: Colors.white,
            errorColor: Colors.white,
            errorSize: 14,
            suffixIcon: Icons.https_outlined,
            iconColor: Colors.white,
            hasBorder: true,
            fillColor: Colors.transparent,
            borderColor: Colors.white,
            borderWidth: 2,
            errorBorderColor: Colors.white,
            focusedErrorBorderColor: Colors.white,
            addAsterix: false,
            errorMsg: 'Email and password fields required.',
          ),

          Container
          (
            margin: EdgeInsets.only(top: widget.constraints.maxHeight * 0.03),
            padding: EdgeInsets.only
            (
              left: 15,
              right: 15,
            ),
            width: widget.constraints.maxWidth,
            child: LargeButtonIconText
            (
              text: "Log In",
              textColor: Colors.white,
              buttonColor: Color.fromRGBO(245, 197, 41, 1),
              hasIcon: false,
              processing: processing,
              elevation: 0,
              isPageTransition: true,
              transitionType: 'downToUp',
              transitionDuration: 1100,
              onPress: NGOBottomNav(),
              // onSuperPress: userLogin,
            ),
          )
        ],
      ),
    );
  }
}