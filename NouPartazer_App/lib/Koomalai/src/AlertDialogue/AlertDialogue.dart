
import 'package:NouPartazer_App/Koomalai/Screens/Signin/components/social_icon.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_button.dart';
import 'package:NouPartazer_App/Koomalai/src/Security/Security.dart';
import 'package:flutter/material.dart';

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

