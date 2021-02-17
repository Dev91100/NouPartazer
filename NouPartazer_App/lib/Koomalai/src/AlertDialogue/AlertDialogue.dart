
import 'package:NouPartazer_App/Koomalai/Screens/Signin/components/social_icon.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_button.dart';
import 'package:NouPartazer_App/Koomalai/src/Help%20and%20support/helpAndSupport.dart';
import 'package:NouPartazer_App/Koomalai/src/Security/Security.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/components/body.dart';
import 'package:NouPartazer_App/Koomalai/splashscreen.dart';
import 'package:settings_ui/settings_ui.dart';

class AlertBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      actions: [
        Align(
          alignment: Alignment.center,
          child: SocalIcon(
              iconSrc: "assets/SVG/Tick Icon.svg",
      ),
        ),


        Align(
          alignment: Alignment.center,
           child: Text(
              "Success" ,
              style: TextStyle(
                fontFamily: "risotto",
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),

           ),
        ),


        Align(
        alignment: Alignment.center,
              child: Text(
                "Changes updated!",
                style: TextStyle(
                  fontFamily: "risotto",
                  fontSize: 18.0,
                  /*fontWeight: FontWeight.bold,*/
                ),
              ),
        ),

        RoundedButton(
          text: "Done",
          color:Colors.amber[50],
          textColor: Colors.amber,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color:Colors.amber),
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


      ],


    );


  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }



  }
