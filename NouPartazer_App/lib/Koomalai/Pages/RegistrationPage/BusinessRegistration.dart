
import 'package:flutter/material.dart';

import 'package:noupartazer_app/Koomalai/Pages/SignUp/SignUp.dart';
import 'package:noupartazer_app/Koomalai/components/rounded_button.dart';
import 'package:noupartazer_app/Koomalai/components/rounded_input.dart';
import 'package:noupartazer_app/Koomalai/src/screens/BusinessNGOmainScreen.dart';

class BusinessRegistration extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    var screen = MediaQuery.of(context).size;

    return Scaffold
    (
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

            SizedBox
            (
              height: screen.height * 0.01
            ),

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

            SizedBox
            (
              height: screen.height * 0.01
            ),

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

            SizedBox
            (
              height: screen.height * 0.01
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Business Information",
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
                "BRN",
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
              onChanged: (value) {},
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Company Name",
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
              onChanged: (value) {},
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Business Name",
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
              onChanged: (value) {},
            ),

            Container
            (
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text
              (
                "Contact Number",
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
              onChanged: (value) {},
            ),

            RoundedButton
            (
                text: "Register",
                color:Color.fromRGBO(245, 197, 41, 1),
                textColor: Color.fromRGBO(255, 255, 255, 1),

                shape: RoundedRectangleBorder
                (
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide
                  (
                    color: Color.fromRGBO(245, 197, 41, 1)
                  ),
                ),
                press: ()
                {
                  Navigator.push
                  (
                    context,
                    MaterialPageRoute
                    (
                      builder: (context)
                      {
                        return BusinessMainScreen();
                      },
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
