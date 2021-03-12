import 'package:flutter/material.dart';
 
class Confirmation extends StatefulWidget {

final String text;

const Confirmation
(
  {
    @required this.text,
  }  
);

  _ConfirmationState createState() => _ConfirmationState();
 
}
bool _isSelected = false;
class _ConfirmationState extends State<Confirmation> {

  showAlert(BuildContext context) {
    showDialog(
    context: context,
    barrierDismissible: false,
    
    builder: (BuildContext context) {

       return ButtonBarTheme
        (
          data: ButtonBarThemeData
          (
            alignment: MainAxisAlignment.center,
            //buttonPadding: EdgeInsets.all(20),
            mainAxisSize: MainAxisSize.min,
            
          ),
        
        child: AlertDialog(
          contentPadding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder
            ( 
              borderRadius: BorderRadius.circular(10),
              
              
            ),

        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
           mainAxisAlignment: MainAxisAlignment.end,
          children:<Widget>
          [ 
            IconButton(
            icon: Icon(Icons.close),
           
            onPressed: () {
              //Put your code here which you want to execute on close button click.
              Navigator.of(context).pop();
            },

            ),
              
            ]
           ),

         //contentPadding: EdgeInsets.only(left: 22, right: 30),
         content: ListTile(
          title:Text('Please tick the checkbox to confirm.',
              textAlign: TextAlign.justify,
              style: TextStyle
              (
               fontWeight: FontWeight.bold,
               fontSize: 18.0,
               //color: Color.fromRGBO(0, 0, 0, 1),
              )
            ),
         
        subtitle: CheckboxListTile
        (
          title: Text
          (
            widget.text,
            textAlign: TextAlign.left,
            style: TextStyle
            (
            fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: Color.fromRGBO(41, 90, 245, 1),
            )
          ),

            controlAffinity: ListTileControlAffinity.leading,
            value: _isSelected,
            onChanged: (bool value){
            setState(() {
                            _isSelected = value;

                          });

          },
        )

        ),
      
         
        actions: <Widget>[

          TextButton(
            child: Text("Cancel",
            style: TextStyle
                  (
                    decoration:TextDecoration.underline,
                    color: Color.fromRGBO(102, 102, 102, 1),
                    fontSize: 20.0,
                      
                  )
                  ),
            
            onPressed: () {
              //Put your code here which you want to execute on Yes button click.
              Navigator.of(context).pop();
            },
            
          ),
 
           OutlinedButton(
            child: Text("Confirm",
             style: TextStyle
                  (
                    color: Color.fromRGBO(245, 197, 41, 1),
                    fontSize: 20.0,
                                     
                  ),
            ),
             style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.yellow[50],
                    side: BorderSide(color: Color.fromRGBO(245, 197, 41, 1), width: 1.5),
                    primary: Color.fromRGBO(212, 0, 0, 1),
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),
                  
                  ),
                  
                    onPressed: () {
              //Put your code here which you want to execute on Cancel button click.
              Navigator.of(context).pop();
              
            },

          ),
        
        ],
         )
        
      );
     },
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return showAlert(context);
    /*return Scaffold(
      body: Center(
        child:
            RaisedButton(
              onPressed: () => showAlert(context),
              child: Text('Click Here To Show Alert Dialog Box'),
              textColor: Colors.white,
              color: Colors.blueAccent,
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
      ),

    );*/
    /*showAlert(BuildContext context) {
      showDialog(
        context: context,
        barrierDismissible: false,

        builder: (BuildContext context) {

          return ButtonBarTheme
            (
              data: ButtonBarThemeData
                (
                alignment: MainAxisAlignment.center,
                //buttonPadding: EdgeInsets.all(20),
                mainAxisSize: MainAxisSize.min,

              ),

              child: AlertDialog(
                contentPadding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder
                  (
                  borderRadius: BorderRadius.circular(10),


                ),

                title: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:<Widget>
                    [
                      IconButton(
                        icon: Icon(Icons.close),

                        onPressed: () {
                          //Put your code here which you want to execute on close button click.
                          Navigator.of(context).pop();
                        },

                      ),

                    ]
                ),

                //contentPadding: EdgeInsets.only(left: 22, right: 30),
                content: ListTile(
                    title:Text('Please tick the checkbox to confirm.',
                        textAlign: TextAlign.justify,
                        style: TextStyle
                          (
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          //color: Color.fromRGBO(0, 0, 0, 1),
                        )
                    ),

                    subtitle: CheckboxListTile
                      (
                      title: Text
                        (
                          widget.text,
                          textAlign: TextAlign.left,
                          style: TextStyle
                            (
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Color.fromRGBO(41, 90, 245, 1),
                          )
                      ),

                      controlAffinity: ListTileControlAffinity.leading,
                      value: _isSelected,
                      onChanged: (bool value){
                        setState(() {
                          _isSelected = value;

                        });

                      },
                    )

                ),


                actions: <Widget>[

                  TextButton(
                    child: Text("Cancel",
                        style: TextStyle
                          (
                          decoration:TextDecoration.underline,
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontSize: 20.0,

                        )
                    ),

                    onPressed: () {
                      //Put your code here which you want to execute on Yes button click.
                      Navigator.of(context).pop();
                    },

                  ),

                  OutlinedButton(
                    child: Text("Confirm",
                      style: TextStyle
                        (
                        color: Color.fromRGBO(245, 197, 41, 1),
                        fontSize: 20.0,

                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.yellow[50],
                      side: BorderSide(color: Color.fromRGBO(245, 197, 41, 1), width: 1.5),
                      primary: Color.fromRGBO(212, 0, 0, 1),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),

                    ),

                    onPressed: () {
                      //Put your code here which you want to execute on Cancel button click.
                      Navigator.of(context).pop();

                    },

                  ),

                ],
              )

          );
        },
      );
    }*/


  }
}