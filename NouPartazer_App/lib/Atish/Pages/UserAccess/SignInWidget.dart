import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/Buttons/LargeButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Devashish/components/Transitions/AllTransitions.dart';
import 'package:noupartazer_app/Devashish/pages/ForgotPassword.dart';
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

  @override
  void initState()
  {
    super.initState();
    
    emailCtrl = new TextEditingController();
    passwordCtrl = new TextEditingController();
  }

  @override
  Widget build(BuildContext context)
  {
    return Form
    (
      key: _formKey,

      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          Container
          (
            alignment: Alignment.bottomLeft,
            child: FittedBox
            (
              fit: BoxFit.contain,
              child: Text
              (
                "Welcome,",
                style: TextStyle
                (
                  color: Color.fromRGBO(245, 197, 41, 1),
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),

          Container
          (
            alignment: Alignment.bottomLeft,
            child: FittedBox
            (
              fit: BoxFit.contain,
              child: Text
              (
                "Sign in to continue",
                style: TextStyle
                (
                  color: Colors.white,
                  fontSize: 22.0
                ),
              ),
            ),
          ),

          CustomTextField
          (
            controller: emailCtrl,
            labelText: 'Email',
            labelSize: 20,
            iconSize: 25,
            labelColor: Colors.white,
            suffixIcon: Icons.email_outlined,
            iconColor: Colors.white,
            hasBorder: true,
            fillColor: Colors.transparent,
            borderColor: Colors.white,
            borderWidth: 2,
          ),

          CustomTextField
          (
            controller: passwordCtrl,
            labelText: 'Password',
            labelSize: 20,
            iconSize: 25,
            labelColor: Colors.white,
            suffixIcon: Icons.https_outlined,
            iconColor: Colors.white,
            hasBorder: true,
            fillColor: Colors.transparent,
            borderColor: Colors.white,
            borderWidth: 2,
          ),

          Container
          (
            margin: EdgeInsets.only(top: widget.constraints.maxHeight * 0.02),
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
              elevation: 0,
              isPageTransition: true,
              transitionType: 'downToUp',
              theTransitionDuration: 1100,
              onPress: NGOBottomNav(),
            ),
          ),

          Container
          (
            margin: EdgeInsets.only(top: widget.constraints.maxHeight * 0.0025),
            child: MaterialButton
            (
              child: FittedBox
              (
                fit: BoxFit.contain,
                child: Text
                (
                  "Forgot Password?",
                  style: TextStyle
                  (
                    color: Colors.white,
                    fontSize: 22.0,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              
              onPressed: ()
              {
                AllTransitions().getTransition
                (
                  context: context,
                  transitionType: 'rightToLeft',
                  theTransitionDuration: 1100,
                  onPress: ForgotPassword(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}