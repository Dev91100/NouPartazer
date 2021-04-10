import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/database/Tables/NGO.dart';
import 'package:noupartazer_app/database/DatabaseQuery.dart';
import 'package:noupartazer_app/components/Text/HugeText.dart';
import 'package:noupartazer_app/components/Text/MediumText.dart';
import 'package:noupartazer_app/components/CustomTextField.dart';
import 'package:noupartazer_app/components/Transitions/AllTransitions.dart';
import 'package:noupartazer_app/components/Buttons/LargeButtonIconText.dart';
import 'package:noupartazer_app/Pages/BottomNavigation/BusinessBottomNav.dart';
import 'package:noupartazer_app/database/Tables/PROFILE.dart';
import 'package:noupartazer_app/pages/BottomNavigation/NGOBottomNav.dart';


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

  DatabaseQuery _query;

  List<PROFILE> _profileDataList;

  @override
  void initState()
  {
    super.initState();
    
    _query = DatabaseQuery();
    readUserData();

    emailCtrl = new TextEditingController();
    passwordCtrl = new TextEditingController();
  }

  // Insert data in table
  insertUserData({String tableName = 'PROFILE', var data}) async
  {
    return await _query.insertData(tableName, data);
  }

  // Read data from table
  readUserData() async
  {
    _profileDataList = [];
    var userData = await _query.readData('PROFILE');
    userData.forEach((data)
    {
      setState(() {
        var profile = PROFILE();
        profile.email = data['email'];
        _profileDataList.add(profile);
      });
    });
    print("Email: " + _profileDataList[0].email.toString());
    return userData;
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

    var uri = Uri.parse("https://foodsharingapp.000webhostapp.com/SignIn.php");

    var data = 
    {
      "email" : emailCtrl.text,
      "password" : passwordCtrl.text,
    };

    var request = await http.post(uri, body:data);

    var interface;

    if(jsonDecode(request.body) == 'ngo')
    {
      interface = NGOBottomNav();
    }
    else if(jsonDecode(request.body) == 'business')
    {
      interface = BusinessBottomNav();
    }

    if(jsonDecode(request.body) != 'false')
    {
      var result = await insertUserData
      (
        data: PROFILE
        (
          email: "test@emailsqf.com",
        ).generateMap()
      );

      print(result);

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
              top: Global().tinyPageMargin
            ),
            child: MediumText
            (
              text: 'Sign in to continue',
              textColor: Colors.white,
            ),
          ),

          Container
          (
            margin: EdgeInsets.only(top: Global().mediumSpacing),
            child: CustomTextField
            (
              textColor: Colors.white,
              controller: emailCtrl,
              labelText: 'Email',
              labelSize: 20,
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
              contentPadding: EdgeInsets.symmetric
              (
                horizontal: Global().smallSpacing, 
                vertical: Global().mediumSpacing
              ),              
            ),
          ),

          CustomTextField
          (
            obscureText: true,
            textColor: Colors.white,
            controller: passwordCtrl,
            labelText: 'Password',
            labelSize: 20,
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
            margin: EdgeInsets.only(bottom: 0),
            contentPadding: EdgeInsets.symmetric
            (
              horizontal: Global().smallSpacing, 
              vertical: Global().mediumSpacing
            ),
          ),

          Container
          (
            padding: EdgeInsets.symmetric(horizontal: Global().smallSpacing),
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
              // onPress: NGOBottomNav(),
              isAsync: true,
              onSuperPress: userLogin,
            ),
          )
        ],
      ),
    );
  }
}