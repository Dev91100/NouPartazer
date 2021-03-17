
import 'dart:convert';

import 'package:noupartazer_app/Devashish/pages/CheckEmailValidation.dart';
import 'package:noupartazer_app/Koomalai/Pages/SignUp/SignUp.dart';
import 'package:noupartazer_app/Koomalai/components/rounded_button.dart';
import 'package:noupartazer_app/Koomalai/components/rounded_input.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class NGORegistration extends StatelessWidget
{
  TextEditingController regNumber,name,expertise,memberSize,address,phone,website,email,password;

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
    var screen = MediaQuery.of(context).size;

    return Scaffold
    (
      backgroundColor: Colors.white,
      body: SingleChildScrollView
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Container
            (
              margin: EdgeInsets.only(top:35.0),
              alignment: Alignment.centerLeft,
              child: IconButton
              (
                icon: Icon(Icons.arrow_back_ios_outlined),          
                iconSize: 30.0,
                onPressed: ()
                {
                  Navigator.push
                  (
                    context,
                    MaterialPageRoute
                    (
                      builder: (context)
                      {
                        return SignUp();
                      },
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: screen.height * 0.01),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Let's continue,",
                style: TextStyle
                (
                  color: Color.fromRGBO(245, 197, 41, 1),
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            SizedBox(height: screen.height * 0.01),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
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

            SizedBox(height: screen.height * 0.01),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "NGO Information",
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            SizedBox(height: screen.height * 0.01),
            
            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Registration Number",
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            RoundedInput
            (
              controller:regNumber,
              hintText: "RegistrationNumber",
              onChanged: (value) {},
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Registered Name",
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            RoundedInput
            (
              hintText: "RegisteredName",
              controller:name,
              onChanged: (value) {},
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "NGOExpertise",
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            RoundedInput
            (
              hintText: "NGO Expertise",
              controller:expertise,
              onChanged: (value) {},
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Member Size",
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            
            RoundedInput
            (
              hintText: "MemberSize",
              controller:memberSize,
              onChanged: (value) {},
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Address",
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            RoundedInput
            (
              hintText: "Address",
              controller:address,
              onChanged: (value) {},
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Website",
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            RoundedInput
            (
              hintText: "Website",
              controller:website,
              onChanged: (value) {},
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Phone Number",
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            RoundedInput
            (
              hintText: "PhoneNumber",
              controller:phone,
              onChanged: (value) {},
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Email",
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            RoundedInput
            (
              hintText: "Email",
              controller:email,
              onChanged: (value) {},
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Password",
                style: TextStyle
                (
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            RoundedInput
            (
              hintText: "Password",
              controller:password,
              onChanged: (value) {},
            ),

            RoundedButton
            (
              text: "Register",
              color:Color.fromRGBO(245, 197, 41, 1),
              textColor: Color.fromRGBO(255,255 , 255, 1),

              shape: RoundedRectangleBorder
              (
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide
                (
                  color:Color.fromRGBO(245, 197, 41, 1)
                ),
              ),

              press:()
              {
                register();

                Navigator.push
                (
                  context,
                  MaterialPageRoute
                  (
                    builder: (context)
                    {
                      return CheckEmailValidation();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
