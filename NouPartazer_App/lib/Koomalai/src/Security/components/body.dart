
/*import 'package:flutter_auth/Screens/Login/components/background.dart';*/
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/components/ChangePassword.dart';
import 'package:NouPartazer_App/Koomalai/components/CreateNewPassword.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_button.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_input.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/Setting.dart';
import 'package:flutter/material.dart';

import '../Security.dart';
import 'background.dart';

/*import '../Business.dart';*/

class Body extends StatelessWidget {

  CreateAlertDialog(BuildContext context){
    return showDialog(context: context,builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        actions: [
          SizedBox(
            height: 20.0,
          ),
          Align(
            alignment: Alignment.center,

            child: Image(
              image: AssetImage('assets/JPEG/Tick Icon.jpg'),
              width: 90.0,

            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          Align(
            alignment: Alignment.center,
            child: Text(
              "Success" ,
              style: TextStyle(
                
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),

            ),
          ),

          SizedBox(
            height: 10.0,
          ),

          Align(
            alignment: Alignment.center,
            child: Text(
              "Changes updated!",
              style: TextStyle(
                
                fontSize: 18.0,
                /*fontWeight: FontWeight.bold,*/
              ),
            ),
          ),

          RoundedButton(
            text: "Done",
            color:Color.fromRGBO(245, 197, 41, 1),
            textColor: Color.fromRGBO(245, 197, 41, 1),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color:Color.fromRGBO(245, 197, 41, 1)),
            ),


            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {

                    return Security();

                  },
                ),
              );
            },


          ),

          SizedBox(
            height: 20.0,
          ),

        ],


      );

    }
    );
  }


  AccountAlertDialog(BuildContext context){
    return showDialog(context: context,builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        actions: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon (Icons.close),

              iconSize: 30.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Security();
                    },
                  ),
                );
              },
            ),
          ),


          Align(
            alignment: Alignment.center,
            child: Text(
              "Please enter your password" ,
              style: TextStyle(
                
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),

            ),
          ),


          SizedBox(
            height: 25.0,
          ),

          RoundedInput(
            hintText: "Password",
            onChanged: (value) {},

          ),


          Row(
            children: <Widget>[

              SizedBox(
                width: 50.0,
              ),


              MaterialButton(
                child:Text("Cancel",
                    style: TextStyle(decoration: TextDecoration.underline,fontSize: 15.0,color: Colors.red
                     ),
                ),

                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {

                        return Security();

                      },
                    ),
                  );
                },


          ),

              SizedBox(
                width: 25.0,
              ),

              MaterialButton(
                child:Text("Deactivate",
                  style: TextStyle(decoration: TextDecoration.underline,fontSize: 15.0,color: Colors.red
                  ),
                ),

                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {

                        return LoginScreen();

                      },
                    ),
                  );
                },


              ),

          ]
          )

        ],


      );

    }
    );
  }


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
            Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top:0.0),
                    alignment: Alignment.topLeft,


                    child: IconButton(
                      icon: Icon (Icons.arrow_back_ios_outlined),

                      iconSize: 30.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Settings();
                            },
                          ),
                        );
                      },
                    ),

                  ),


                  SizedBox(
                    width: 75.0,
                  ),


                  Container(
                    margin: EdgeInsets.only(top:0.0),
                    child: Text(
                      "SECURITY",
                      style: TextStyle(
                        
                        fontSize: 22.0,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ]
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




            SizedBox(height: size.height * 0.02),
            Container(
              margin: EdgeInsets.only(left: 0.0),
              alignment: Alignment.bottomCenter,
              child: Text("CHANGE PASSWORD",
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
              ),
            ),

            /*RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),*/

            SizedBox(height: size.height * 0.01),


            ChangePasswordField(

            onChanged: (value) {},
            ),


            CreateNewPasswordField(
            onChanged: (value) {},
          ),





            /* SizedBox(height: size.height * 0.03),*/
            RoundedButton(
              text: "Change Password",
              color:Color.fromRGBO(245, 197, 41, 1),
              textColor: Color.fromRGBO(245, 197, 41, 1),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color:Color.fromRGBO(245, 197, 41, 1)),
              ),

              press: (){
                CreateAlertDialog(context);
              },

            ),

            SizedBox(
                height: 250,
                width:50.0,
            ),

            ListTile(
              title: Text('Delete my account',
                style: TextStyle(
                  
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent
                ),
              ),

              leading: Icon(Icons.delete_outline, color: Colors.redAccent,
                size: 30.0,),

              onTap: () {
                AccountAlertDialog(context);
              },
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





