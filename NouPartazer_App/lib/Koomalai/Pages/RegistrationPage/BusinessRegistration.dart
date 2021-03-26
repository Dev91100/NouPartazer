import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Atish/components/Text/HugeText.dart';
import 'package:noupartazer_app/Atish/components/Text/MediumText.dart';
import 'package:noupartazer_app/Devashish/Global.dart';
import 'package:noupartazer_app/Devashish/components/AccountCreated.dart';
import 'package:noupartazer_app/Devashish/components/Transitions/AllTransitions.dart';
import 'package:noupartazer_app/Koomalai/Pages/BottomNavigation/BusinessBottomNav.dart';

class BusinessRegistration extends StatefulWidget
{
  @override
  _BusinessRegistrationState createState() => _BusinessRegistrationState();
}

class _BusinessRegistrationState extends State<BusinessRegistration>
{
  final _formKey = GlobalKey<FormState>();
  TextEditingController brnCtrl, companyNameCtrl, businessNameCtrl, websiteCtrl, contactNumberCtrl, emailCtrl, passwordCtrl;

  bool processing = false;

  @override
  void initState()
  {
    super.initState();
    
    brnCtrl = new TextEditingController();
    companyNameCtrl = new TextEditingController();
    businessNameCtrl = new TextEditingController();
    websiteCtrl = new TextEditingController();
    contactNumberCtrl = new TextEditingController();
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
      msg: "Please fill in the required fields correctly.",
      toastLength: Toast.LENGTH_SHORT,
    );
  }

  Future registerUser() async
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

    var url = "https://foodsharingapp.000webhostapp.com/BusinessRegistration.php";
    var data = 
    {
      "brn" : brnCtrl.text,
      "companyName" : companyNameCtrl.text,
      "businessName" : businessNameCtrl.text,
      "website" : websiteCtrl.text,
      "contactNumber" : contactNumberCtrl.text,
      "email" : emailCtrl.text,
      "password" : passwordCtrl.text,
    };

    var res = await http.post(url, body:data);

    if(jsonDecode(res.body) == "account already exist")
    {
      Fluttertoast.showToast
      (
        msg: "Account already exist, please login.",
        toastLength: Toast.LENGTH_SHORT,
      );
    }
    else
    {
      if(jsonDecode(res.body) == "true")
      {
        Fluttertoast.showToast
        (
          msg: "Account created.",
          toastLength: Toast.LENGTH_SHORT,
        );

        AllTransitions().getTransition
        (
          context: context,
          transitionType: 'rightToLeft',
          onPress: AccountCreated(),
        );
      }
      else
      {
        Fluttertoast.showToast
        (
          msg: "Server Error.",
          toastLength: Toast.LENGTH_SHORT,
        );
      }
    }

    setState(() {
      processing = false;
    });

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: PageTitle
      (
        barColor: Colors.white,
        hasBackButton: true,
      ),
      body: LayoutBuilder
      (
        builder: (ctx, constraints)
        {
          return Container
          (
            margin: EdgeInsets.symmetric(horizontal: Global().smallPageMargin),
            child: SingleChildScrollView
            (
              child: Form
              (
                key: _formKey,

                child: Column
                (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                  [
                    Container
                    (
                      child: HugeText(text: 'Let\'s continue'),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only(top: Global().smallSpacing),
                      child: MediumText
                      (
                        text: "Fill in the following information",
                      ),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only
                      (
                        top: Global().smallSpacing,
                      ),
                      child: SectionTitle
                      (
                        text: 'BUSINESS INFORMATION',
                      ),
                    ),

                    CustomTextField
                    (
                      controller: brnCtrl,
                      keyboardType: TextInputType.text,
                      labelText: 'BRN',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: companyNameCtrl,
                      keyboardType: TextInputType.text,
                      labelText: 'Company Name',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: businessNameCtrl,
                      keyboardType: TextInputType.text,
                      labelText: 'Business Name',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: websiteCtrl,
                      keyboardType: TextInputType.url,
                      addAsterix: false,
                      optional: true,
                      labelText: 'Website',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: contactNumberCtrl,
                      keyboardType: TextInputType.number,
                      fieldType: 'length',
                      minLength: 7,
                      maxLength: 8,
                      labelText: 'Contact Number',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: emailCtrl,
                      keyboardType: TextInputType.emailAddress,
                      fieldType: 'email',
                      labelText: 'Email',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: passwordCtrl,
                      keyboardType: TextInputType.visiblePassword,
                      labelText: 'Password',
                      obscureText: true,
                      hasSuffixIcon: false,
                      margin: EdgeInsets.only(bottom: 0),
                    ),
                    
                    Container
                    (
                      width: constraints.maxWidth,
                      child: LargeCustomButtonIconText
                      (
                        text: 'Register',
                        processing: processing,
                        hasIcon: false,
                        isPageTransition: true,
                        transitionType: 'downToUp',
                        onPress: BusinessBottomNav(),
                        // onSuperPress: registerUser,
                      )
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
