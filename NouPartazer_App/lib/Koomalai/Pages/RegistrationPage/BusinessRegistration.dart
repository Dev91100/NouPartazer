import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Koomalai/src/screens/BusinessNGOmainScreen.dart';


class BusinessRegistration extends StatefulWidget
{
  @override
  _BusinessRegistrationState createState() => _BusinessRegistrationState();
}

class _BusinessRegistrationState extends State<BusinessRegistration>
{
  final _formKey = GlobalKey<FormState>();

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
                      labelText: 'BRN',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Company Name',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Business Name',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Website',
                      hasSuffixIcon: false,
                    ),

                    CustomTextField
                    (
                      labelText: 'Contact Number',
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
                        isPage: true,
                        onPress: BusinessMainScreen(),
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
