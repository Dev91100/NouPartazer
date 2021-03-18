import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:noupartazer_app/Devashish/components/TheOutlinedButtons.dart';
import 'package:noupartazer_app/Devashish/components/TheBackButton.dart';
import 'package:noupartazer_app/Devashish/components/YellowTitles.dart';
import 'package:noupartazer_app/Devashish/components/YellowTitlePara.dart';
import 'CheckResetPW.dart';

class ForgotPassword extends StatelessWidget {

  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();


  @override
  Widget build(BuildContext context) 
  {
    //test commit 2
    return Scaffold
    (
      appBar: AppBar
      (
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: TheBackButton(),
      ),
      body: ListView
      (
        key: formKey, 
        children: <Widget>
        [
          Container
          (
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: YellowTitles(textContent: "Forgot Password?",),
          ),

          Container
          (
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: YellowTitlePara
            (
              paragraph: "Enter your email address associated with this account. We will send you a link to reset your password.",
              textAlignment: TextAlign.left,
            ),

          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            child: SizedBox(
              height: 60,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  // onEditingComplete: (),
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: const OutlineInputBorder(),
                    hintText: "Email",
                    // errorText: "Invalid Email, Try Again",
                    suffixIcon: Icon(Icons.email_outlined),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please enter some text";
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),

          Container
          (
            child: TheOutlinedButtons(
              message: 'Send Email',
                press: () 
                { 
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CheckResetPW();
                      },
                    ),
                  );
                }
            )
          )
        ]
      )
    );
  }
}
