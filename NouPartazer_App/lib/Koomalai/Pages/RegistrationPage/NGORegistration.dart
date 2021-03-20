import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:noupartazer_app/Atish/components/CustomDivider.dart';

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';



class NGORegistration extends StatefulWidget
{
  @override
  _NGORegistrationState createState() => _NGORegistrationState();
}

class _NGORegistrationState extends State<NGORegistration>
{
  final _formKey = GlobalKey<FormState>();

  Future register() async
  {

    var url = "https://foodsharingapp.000webhostapp.com/register.php";

    var res = await http.post
    (
      url,body:
      {
        "RegistrationNumber":"1234",
        "RegisteredName":"Testing",
        "NGOExpertise":"Test",
        "MemberSize":"100",
        "Address":"Test Address",
        "Website":"Test@test.com",
        "PhoneNumber":"54874511",
      }
    );

    if(jsonDecode(res.body) == "account already exists")
    {
      Fluttertoast.showToast(msg: "account exists, Please login",toastLength: Toast.LENGTH_SHORT);
    }
    else
    {
      if(jsonDecode(res.body) == "true")
      {
        Fluttertoast.showToast(msg: "account created",toastLength: Toast.LENGTH_SHORT);
      }
      else
      {
        Fluttertoast.showToast(msg: "error",toastLength: Toast.LENGTH_SHORT);
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
                      labelText: 'Registration Number',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Registred Number',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'NGO Expertise',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Member Size',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Address',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
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
                      labelText: 'Title',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Name',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Surname',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Position',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Phone Number',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Email',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
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
