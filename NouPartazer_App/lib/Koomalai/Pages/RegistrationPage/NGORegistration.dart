import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:noupartazer_app/Atish/components/CustomDivider.dart';

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Devashish/components/AccountCreated.dart';
import 'package:noupartazer_app/Devashish/components/Transitions/AllTransitions.dart';

class NGORegistration extends StatefulWidget
{
  @override
  _NGORegistrationState createState() => _NGORegistrationState();
}

class _NGORegistrationState extends State<NGORegistration>
{
  final _formKey = GlobalKey<FormState>();
  TextEditingController regNumberCtrl, regNameCtrl, ngoExpertiseCtrl, memberSizeCtrl, addressCtrl, websiteCtrl, titleCtrl, nameCtrl, surnameCtrl, positionCtrl, phoneNumberCtrl, emailCtrl, passwordCtrl;

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
    phoneNumberCtrl = new TextEditingController();
    emailCtrl = new TextEditingController();
    passwordCtrl = new TextEditingController();
  }
  
  Future registerUser() async
  {
    var url = "https://foodsharingapp.000webhostapp.com/NGORegistration.php";
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
      "phoneNumber" : phoneNumberCtrl.text,
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
          msg: "Error.",
          toastLength: Toast.LENGTH_SHORT,
        );
      }
    }
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
            margin: EdgeInsets.only
            (
              left: 20,
              right: 20,
            ),
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
                      child: SectionTitle
                      (
                        title: 'Let\'s continue',
                        left: 0,
                        fontSize: 45,
                        color: Color.fromRGBO(245, 197, 41, 1),
                      ),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only(top: 15),
                      child: Text
                      (
                        "Fill in the following information",
                        style: TextStyle
                        (
                          color: Colors.black,
                          fontSize: 22.0
                        ),
                      ),
                    ),

                    Container
                    (
                      margin: EdgeInsets.only(top: 15),
                      child: SectionTitle
                      (
                        title: 'NGO INFORMATION',
                        fontSize: 18,
                        left: 0,
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
                      labelText: 'Registred Name',
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
                      labelText: 'Website',
                      hasSuffixIcon: false,
                    ),

                    CustomDivider(),

                    Container
                    (
                      child: SectionTitle
                      (
                        title: 'ACCOUNT HOLDER INFORMATION',
                        fontSize: 18,
                        left: 0,
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
                      labelText: 'Name',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: surnameCtrl,
                      keyboardType: TextInputType.name,
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
                      controller: phoneNumberCtrl,
                      keyboardType: TextInputType.number,
                      labelText: 'Phone Number',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: emailCtrl,
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'Email',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: passwordCtrl,
                      keyboardType: TextInputType.visiblePassword,
                      labelText: 'Password',
                      hasSuffixIcon: false,
                    ),

                    Container
                    (
                      padding: EdgeInsets.only
                      (
                        right: 15,
                        left: 15,
                        bottom: 40
                      ),
                      
                      margin: EdgeInsets.only(top: 20),
                      width: constraints.maxWidth,
                      child: LargeCustomButtonIconText
                      (
                        text: 'Register',
                        hasIcon: false,
                        hasSuperPress: true,
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
