import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Koomalai/Pages/BottomNavigation/BusinessBottomNav.dart';
import 'package:noupartazer_app/Devashish/Global.dart';


class BusinessRegistration extends StatefulWidget
{
  @override
  _BusinessRegistrationState createState() => _BusinessRegistrationState();
}

class _BusinessRegistrationState extends State<BusinessRegistration>
{
  final _formKey = GlobalKey<FormState>();
  TextEditingController brnCtrl, companyNameCtrl, businessNameCtrl, websiteCtrl, contactNumberCtrl, emailCtrl, passwordCtrl;

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
                        fontSize: Global().yellowTitle,
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
                          fontSize: Global().yellowTitlePara,
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
                        padding: EdgeInsets.all(8),
                        text: 'Register',
                        fontSize: Global().registerButton,
                        hasIcon: false,
                        isPage: true,
                        onPress: BusinessBottomNav(),
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
