import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Devashish/components/TextFields.dart';

class ConfirmationPopup
{
  String confirmationText;
  String leftButton;
  String rightButton;
  double contentHorizontalPadding;
  double contentTopPadding;

  ConfirmationPopup
  (
    {
      this.confirmationText,
      this.leftButton,
      this.rightButton,
      this.contentHorizontalPadding = 0.1,
      this.contentTopPadding = 0.0,
    }
  );

  StatefulBuilder displayDialog(BuildContext context)
  {
    final screen = MediaQuery.of(context).size;
    var alertDialog = StatefulBuilder
    (
      builder: (context, setState)
      {
        return ButtonBarTheme
        (
          data: ButtonBarThemeData
          (
            alignment: MainAxisAlignment.center,
            buttonPadding: EdgeInsets.all(15),
            mainAxisSize: MainAxisSize.min,
            
          ),
          
          child: AlertDialog
          (
            
            shape: RoundedRectangleBorder
            (
              borderRadius: BorderRadius.circular(10),
            ),
            titlePadding: EdgeInsets.only(top: 0),
            title: Row
            (
              mainAxisAlignment: MainAxisAlignment.end,
              children:
              [ 
                IconButton
                (
                  icon: Icon(Icons.close),
                  // alignment: Alignment.topRight,
                  // padding: EdgeInsets.only(left: 240),
                  onPressed: ()
                  {
                    //Put your code here which you want to execute on close button click.
                    Navigator.of(context).pop();
                  },
                ),
              ]
            ),

            contentPadding: EdgeInsets.only
            (
              // left: 22,
              // right: 30,
              top: screen.height * contentTopPadding,
              left: screen.width * contentHorizontalPadding,
              right: screen.width * contentHorizontalPadding,
            ),

            content: Container
            (
              child: 
              
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Text
                  (
                    confirmationText,
                    textAlign: TextAlign.center,
                    style: TextStyle
                    (
                      //wordSpacing: 5,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      //color: Color.fromRGBO(0, 0, 0, 1),
                    )
                  ),
                  // child: TextFields
                  // (
                  //   isPassword: true,
                  //   inputType: TextInputType.visiblePassword,
                  // ),
                ),

                // Flexible(
                //   flex: 1,
                  // child: TextFields
                  // (
                  //   isPassword: true,
                  //   inputType: TextInputType.visiblePassword,
                  // ),
                // )
              
            ),
            // Text
            // (
            //   confirmationText,
            //   textAlign: TextAlign.center,
            //   style: TextStyle
            //   (
            //     //wordSpacing: 5,
            //     fontWeight: FontWeight.bold,
            //     fontSize: 20.0,
            //     //color: Color.fromRGBO(0, 0, 0, 1),
            //   )
            // ),

            
            actions:
            [
              TextButton
              (
                child: Text
                (
                  leftButton,
                  style: TextStyle
                  (
                    decoration:TextDecoration.underline,
                    color: Color.fromRGBO(102, 102, 102, 1),
                    fontSize: 20.0,
                  )
                ),
                
                onPressed: ()
                {
                  //Put your code here which you want to execute on Yes button click.
                  Navigator.of(context).pop();
                },
              ),
    
              OutlinedButton
              (
                child: Text
                (
                  rightButton,
                  style: TextStyle
                  (
                    color: Color.fromRGBO(212, 0, 0, 1),
                    fontSize: 20.0,               
                  ),
                ),

                style: OutlinedButton.styleFrom
                (
                  backgroundColor: Colors.red[50],
                  side: BorderSide
                  (
                    color: Color.fromRGBO(212, 0, 0, 1),
                    width: 1.5
                  ),
                  primary: Color.fromRGBO(212, 0, 0, 1),
                  shape: const RoundedRectangleBorder
                  (
                    borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                ),
                    
                onPressed: ()
                {
                  //Put your code here which you want to execute on Cancel button click.
                  Navigator.of(context).pop();
                },
              ),
            ],
          )
        );
      }
    );
    
    return alertDialog;
  }
}
