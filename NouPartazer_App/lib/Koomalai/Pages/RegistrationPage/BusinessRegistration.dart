import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';

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

  Future registerUser() async
  {
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
                          fontSize: 20
                        ),
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
                      labelText: 'Website',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      controller: contactNumberCtrl,
                      keyboardType: TextInputType.number,
                      labelText: 'Contact Number',
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
