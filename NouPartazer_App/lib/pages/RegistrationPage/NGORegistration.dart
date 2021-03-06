import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/CustomDivider.dart';
import 'package:noupartazer_app/components/CustomTextField.dart';
import 'package:noupartazer_app/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/components/PageTitle.dart';
import 'package:noupartazer_app/components/SectionTitle.dart';
import 'package:noupartazer_app/components/Text/HugeText.dart';
import 'package:noupartazer_app/components/Text/MediumText.dart';
import 'package:noupartazer_app/components/Transitions/AllTransitions.dart';
import 'package:noupartazer_app/pages/RegistrationPage/AccountCreated.dart';

class NGORegistration extends StatefulWidget
{
  @override
  _NGORegistrationState createState() => _NGORegistrationState();
}

class _NGORegistrationState extends State<NGORegistration>
{
  final _formKey = GlobalKey<FormState>();
  
  TextEditingController regNumberCtrl, regNameCtrl, ngoExpertiseCtrl, memberSizeCtrl, addressCtrl, websiteCtrl, titleCtrl, nameCtrl, surnameCtrl, positionCtrl, contactNumberCtrl, emailCtrl, passwordCtrl;

  bool processing = false;

  @override
  void initState()
  {
    super.initState();
    
    regNumberCtrl = new TextEditingController();
    regNameCtrl = new TextEditingController();
    ngoExpertiseCtrl = new TextEditingController();
    memberSizeCtrl = new TextEditingController();
    addressCtrl = new TextEditingController();
    websiteCtrl = new TextEditingController();
    titleCtrl = new TextEditingController();
    nameCtrl = new TextEditingController();
    surnameCtrl = new TextEditingController();
    positionCtrl = new TextEditingController();
    contactNumberCtrl = new TextEditingController();
    emailCtrl = new TextEditingController();
    passwordCtrl = new TextEditingController();
  }
  
  setValidatorTest()
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
      
    var uri = Uri.parse("https://foodsharingapp.000webhostapp.com/NGORegistration.php");
    var data = 
    {
      "regNumber" : regNumberCtrl.text,
      "regName" : regNameCtrl.text,
      "ngoExpertise" : ngoExpertiseCtrl.text,
      "memberSize" : memberSizeCtrl.text,
      "address" : addressCtrl.text,
      "website" : websiteCtrl.text,
      "title" : titleCtrl.text,
      "name" : nameCtrl.text,
      "surname" : surnameCtrl.text,
      "position" : positionCtrl.text,
      "contactNumber" : contactNumberCtrl.text,
      "email" : emailCtrl.text,
      "password" : passwordCtrl.text,
    };

    var res = await http.post(uri, body:data);

    if(jsonDecode(res.body) == "account already exists")
    {
      Fluttertoast.showToast
      (
        msg: "Email or Registration Number already exist",
        toastLength: Toast.LENGTH_SHORT,
      );
    }
    else
    {
      if(jsonDecode(res.body) == "true")
      {
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
          msg: "Server error, please try again",
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
                      margin: EdgeInsets.only(top: Global().smallSpacing),
                      child: SectionTitle
                      (
                        text: 'NGO INFORMATION',
                      ),
                    ),

                    CustomTextField
                    (
                      controller: regNumberCtrl,
                      keyboardType: TextInputType.text,
                      labelText: 'Registration Number',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: regNameCtrl,
                      keyboardType: TextInputType.name,
                      labelText: 'Registered Name',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: ngoExpertiseCtrl,
                      keyboardType: TextInputType.text,
                      labelText: 'NGO Expertise',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: memberSizeCtrl,
                      keyboardType: TextInputType.number,
                      fieldType: 'num',
                      labelText: 'Member Size',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: addressCtrl,
                      keyboardType: TextInputType.streetAddress,
                      labelText: 'Address',
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
                      margin: EdgeInsets.only(bottom: 0),
                    ),

                    CustomDivider(),

                    Container
                    (
                      child: SectionTitle
                      (
                        text: 'ACCOUNT HOLDER INFORMATION',
                      ),
                    ),

                    CustomTextField
                    (
                      controller: titleCtrl,
                      keyboardType: TextInputType.text,
                      labelText: 'Title',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: nameCtrl,
                      keyboardType: TextInputType.name,
                      fieldType: 'alpha',
                      labelText: 'Name',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: surnameCtrl,
                      keyboardType: TextInputType.name,
                      fieldType: 'alpha',
                      labelText: 'Surname',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: positionCtrl,
                      keyboardType: TextInputType.text,
                      labelText: 'Position',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: contactNumberCtrl,
                      keyboardType: TextInputType.number,
                      fieldType: 'length',
                      minLength: 7,
                      maxLength: 8,
                      labelText: 'Phone Number',
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
                      obscureText: true,
                      labelText: 'Password',
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
                        onSuperPress: registerUser,
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
