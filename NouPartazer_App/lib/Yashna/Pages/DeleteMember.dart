import 'package:flutter/material.dart';
 
class DeleteMember extends StatefulWidget {
 
  DeleteMemberState createState() => DeleteMemberState();
 
}
 
class DeleteMemberState extends State {
 
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
            buttonPadding: EdgeInsets.all(15),
            mainAxisSize: MainAxisSize.min,
            
          ),
        
        child: AlertDialog(
          shape: RoundedRectangleBorder
            ( 
              borderRadius: BorderRadius.circular(10),
            ),


        title: Row(
          children:<Widget>
          [ 
            IconButton(
            icon: Icon(Icons.close),
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(left: 240),
            onPressed: () {
              //Put your code here which you want to execute on close button click.
              Navigator.of(context).pop();
            },

            ),
              
            ]
           ),

         contentPadding: EdgeInsets.only(left: 22, right: 30),
         content: Text('Are you sure you want to delete this member?',
              textAlign: TextAlign.center,
              style: TextStyle
              (
               //wordSpacing: 5,
               fontWeight: FontWeight.bold,
               fontSize: 20.0,
               //color: Color.fromRGBO(0, 0, 0, 1),
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
            child: Text("Delete",
             style: TextStyle
                  (
                    color: Color.fromRGBO(212, 0, 0, 1),
                    fontSize: 20.0,
                                     
                  ),
            ),
             style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red[50],
                    side: BorderSide(color: Color.fromRGBO(212, 0, 0, 1), width: 1.5),
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
    return Scaffold(
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
    );
  }
}
