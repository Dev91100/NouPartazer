import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(key: formKey, children: <Widget>[
      Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Align(
          alignment: Alignment.topLeft,
          // alignment: Alignment.bottomLeft,
          child: IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            iconSize: 70,
            onPressed: () {},
          ),
        ),
      ),
      Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            "Forgot Password?",
            style: TextStyle(
              color: Colors.yellow[700],
              fontWeight: FontWeight.w800,
              fontSize: 38,
              // fontFamily: Roboto,
            ),
          )),
      Container(
          // alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Text(
            "Enter your email address associated with this account. We will send you a link to reset your password.",
            style: TextStyle(
              // color: Colors.yellow[700],
              fontWeight: FontWeight.w500,
              fontSize: 23,
              // fontFamily: Roboto,
            ),
          )),
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
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            primary: Colors.amber[100],
            backgroundColor: Colors.amber[50],
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            side: BorderSide(color: Colors.amber[500], width: 2),
          ),
          child: Text(
            "Send Email",
            style: TextStyle(
              color: Colors.amber[500],
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
      ),
    ]));
  }
}
