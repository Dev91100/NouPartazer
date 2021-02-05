import 'dart:convert';
/*import 'dart:js';*/

import 'package:flutter/material.dart';
/*import 'package:flutter_auth/Screens/Login/components/background.dart';*/
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/signup_screen.dart';
import 'package:NouPartazer_App/Koomalai/components/already_have_an_account_acheck.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_button.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_input.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_input_field.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_password_field.dart';
import 'package:NouPartazer_App/Koomalai/components/text_field.dart';
import 'package:NouPartazer_App/Koomalai/src/screens/mainScreen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;


import 'background.dart';

/*import '../Business.dart';*/

class Body extends StatelessWidget {
  /*const Body({
    Key key,
  }) : super(key: key);*/

  /*TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();*/
  TextEditingController regNumberctrl,namectrl,expertisectrl,sizectrl,addressctrl,phonectrl,websitectrl,emailctrl,passctrl;


  Future register() async {

    var url = "https://foodsharingapp.000webhostapp.com/register.php";
    var data = {
      "RegistrationNumber":regNumberctrl.text,
      "RegisteredName":namectrl.text,
      "NGOExpertise":expertisectrl.text,
      "MemberSize":sizectrl.text,
      "Address":addressctrl.text,
      "Website":websitectrl.text,
      "PhoneNumber":phonectrl.text,
      "Email":emailctrl.text,
      "Password":passctrl.text,
    };

    var res = await http.post(url,body:data);

    if(jsonDecode(res.body) == "account already exists"){
      Fluttertoast.showToast(msg: "account exists, Please login",toastLength: Toast.LENGTH_SHORT);

    }else{

      if(jsonDecode(res.body) == "true"){
        Fluttertoast.showToast(msg: "account created",toastLength: Toast.LENGTH_SHORT);
      }else{
        Fluttertoast.showToast(msg: "error",toastLength: Toast.LENGTH_SHORT);
      }
    }

    /*var url = "https://foodsharingapp.000webhostapp.com/register.php";
    var response = await http.get(url);
    var data = json.decode(response.body);*/
    /*if (data == "Error") {
      FlutterToast(context).showToast(
          child: Text(
            'User allready exit!',
            style: TextStyle(fontSize: 25, color: Colors.red),
          ));
    } else {
      FlutterToast(context).showToast(
          child: Text('Registration Successful',
              style: TextStyle(fontSize: 25, color: Colors.green)));
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard(),),);
    }*/
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),*/

            /*Image(
              image: AssetImage('assets/images/image.jpg'),
              height: size.height * 0.475,

            ),*/
            /*SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),*/

            /*Align(
              alignment: Alignment.topRight,
              child: FlatButton(
                child: Text("Skip",style: TextStyle(color: Colors.white, fontSize: 20.0),),

                onPressed: () {},
                color:Colors.black26,
                minWidth: size.width * 0.5,
              ),


            ),*/

            /*Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                child: Text("Sign Up",style: TextStyle(color: Colors.white, fontSize: 20.0),),

                onPressed: () {},
                color:Colors.black26,
                minWidth: size.width * 0.5,
              ),

            ),

            SizedBox(height: size.height * 0.35),*/
              Container(
                margin: EdgeInsets.only(top:35.0),
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: Icon (Icons.arrow_back_ios_outlined),
                  /*child: Text("Sign In",
                    style: TextStyle(color: Colors.black, fontFamily: 'risotto',fontSize: 20.0),
                  ),

                  shape: Border.all(color:Colors.white,width: 2.0),*/
                  iconSize: 30.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ),
                    );
                  },

                  /*color: Colors.white,
                  minWidth: size.width * 0.5,
                  height: 50.0,*/

                ),
              ),




               /* FlatButton(
                  child: Text("Sign Up",
                    style: TextStyle(color: Colors.white, fontFamily: 'risotto', fontSize: 20.0),),

                  onPressed: () {
                    Colors.white;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();

                        },
                      ),
                    );
                  },
                  color: Colors.black54,
                  minWidth: size.width * 0.5,
                  height: 50.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),

                  ),

                ),*/



            SizedBox(height: size.height * 0.01),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text("Let's continue,",
                style: TextStyle(color: Colors.amber, fontFamily: 'roboto',fontSize: 45.0,fontWeight: FontWeight.bold),),
            ),

            SizedBox(height: size.height * 0.01),
            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text("Fill in the following information",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 22.0),),
            ),

            SizedBox(height: size.height * 0.01),
            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text("NGO Information",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 25.0,fontWeight: FontWeight.bold),
              ),
            ),

            /*RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),*/

            SizedBox(height: size.height * 0.01),
         Container(
          margin: EdgeInsets.only(left: 25.0),
          alignment: Alignment.bottomLeft,
            child: Text(
              "Registration Number",
              style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

            ),
        ),
            RoundedInput(
              controller:regNumberctrl,
              hintText: "RegistrationNumber",
              onChanged: (value) {},

            ),


            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Registered Name",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              hintText: "RegisteredName",
              controller:namectrl,
              onChanged: (value) {},
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "NGOExpertise",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              hintText: "NGO Expertise",
              controller:expertisectrl,
              onChanged: (value) {},
            ),


            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Member Size",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              hintText: "MemberSize",
              controller:sizectrl,
              onChanged: (value) {},
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Address",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              hintText: "Address",
              controller:addressctrl,
              onChanged: (value) {},
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Website",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              hintText: "Website",
              controller:websitectrl,
              onChanged: (value) {},
            ),

            /*Container(
              margin: EdgeInsets.only(left: 25.0,right:25.0),
            child: Divider(
              height: 30,
              thickness: 1.0,
              color: Colors.black54,
            ),
            ),

            /*RoundedPasswordField(
              onChanged: (value) {},
            ),*/
            /*RoundedButton(text: "LOGIN",
              press: () {},*/

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "ACCOUNT HOLDER INFORMATION",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0,top:15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Title",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              onChanged: (value) {},
            ),


            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Name",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              onChanged: (value) {},
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Surname",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              onChanged: (value) {},
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Position",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              onChanged: (value) {},
            ),*/

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Phone Number",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              hintText: "PhoneNumber",
              controller:phonectrl,
              onChanged: (value) {},
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Email",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              hintText: "Email",
              controller:emailctrl,
              onChanged: (value) {},
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Password",
                style: TextStyle(color: Colors.black, fontFamily: 'roboto',fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              hintText: "Password",
              controller:passctrl,
              onChanged: (value) {},
            ),


            /* SizedBox(height: size.height * 0.03),*/
            RoundedButton(
                text: "Register",
                color:Colors.amber[50],
                textColor: Colors.amber,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color:Colors.amber),
                ),
                /*press: () {}*/
                press:() {
                  register();
                },


            ),
          /*Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: FlatButton(
              child: Text("Register",
                style: TextStyle(color: Colors.amber, fontFamily: 'risotto', fontSize: 22.0),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color:Colors.amber),
              ),
              onPressed: () {
              },
              color: Colors.amber[100],
              minWidth: size.width * 0.8,
              padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 100.0),
            ),

          )*/


            /*AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),

            Text(
              "Forgot Password?",
              style: TextStyle(color: Colors.white, fontFamily: 'risotto',fontSize: 22.0, decoration: TextDecoration.underline, fontWeight: FontWeight.bold),

            ),*/



          ],
        ),
      ),
    );
  }
}




