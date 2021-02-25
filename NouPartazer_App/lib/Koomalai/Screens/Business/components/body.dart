import 'package:NouPartazer_App/Koomalai/Screens/Signup/signup_screen.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_button.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_input.dart';
import 'package:NouPartazer_App/Koomalai/src/screens/BusinessNGOmainScreen.dart';
import 'package:flutter/material.dart';

import 'background.dart';

/*import '../Business.dart';*/

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);


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
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
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
                    style: TextStyle(color: Colors.white,  fontSize: 20.0),),

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
                style: TextStyle(color: Color.fromRGBO(245, 197, 41, 1), fontSize: 45.0,fontWeight: FontWeight.bold),),
            ),

            SizedBox(height: size.height * 0.01),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text("Fill in the following information",
                style: TextStyle(color: Colors.black, fontSize: 22.0),),
            ),

            SizedBox(height: size.height * 0.01),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text("Business Information",
                style: TextStyle(color: Colors.black, fontSize: 25.0,fontWeight: FontWeight.bold),),
            ),

            /*RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),

            RoundedPasswordField(
              onChanged: (value) {},
            ),*/
            /*RoundedButton(text: "LOGIN",
              press: () {},*/
            SizedBox(height: size.height * 0.01),
            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "BRN",
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              onChanged: (value) {},
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Company Name",
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              onChanged: (value) {},
            ),


            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Business Name",
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              onChanged: (value) {},
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Website",
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              onChanged: (value) {},
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Contact Number",
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              onChanged: (value) {},
            ),

            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Email",
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              onChanged: (value) {},
            ),


            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Password",
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),

              ),
            ),
            RoundedInput(
              onChanged: (value) {},
            ),

            /* SizedBox(height: size.height * 0.03),*/

            RoundedButton(
                text: "Register",
                color:Color.fromRGBO(245, 197, 41, 1),
                textColor: Color.fromRGBO(255, 255, 255, 1),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color:Color.fromRGBO(245, 197, 41, 1)),
                ),
                press: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return BusinessMainScreen();
                      },
                    ),
                  );

                }


            ),
          /*Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: FlatButton(
              child: Text("Register",
                style: TextStyle(color: Color.fromRGBO(245, 197, 41, 1),  fontSize: 22.0),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color:Color.fromRGBO(245, 197, 41, 1)),
              ),
              onPressed: () {
              },
              color: Color.fromRGBO(245, 197, 41, 1)[100],
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
              style: TextStyle(color: Colors.white, fontSize: 22.0, decoration: TextDecoration.underline, fontWeight: FontWeight.bold),

            ),*/



          ],
        ),
      ),
    );
  }
}



