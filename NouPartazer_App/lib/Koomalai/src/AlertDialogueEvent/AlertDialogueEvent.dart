
import 'package:noupartazer_app/Koomalai/Screens/Signin/components/social_icon.dart';
import 'package:noupartazer_app/Koomalai/components/rounded_button.dart';
import 'package:noupartazer_app/Koomalai/src/Security/Security.dart';
import 'package:flutter/material.dart';

class AlertBoxEvent extends StatelessWidget {
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
                "Event created successfully",
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

                  return NGOSecurity();

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

