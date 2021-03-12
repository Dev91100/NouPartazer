// import 'package:flutter/material.dart';

// class LanguageConfirmation extends StatefulWidget {
//   LanguageConfirmation({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _LanguageConfirmationState createState() => _LanguageConfirmationState();
// }

// class _LanguageConfirmationState extends State<LanguageConfirmation> {

// String valueChoose;
// List listItem = [
// "English"
// ];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: DropdownButton(
//           value: valueChoose,
//           onChanged: (newValue){
//           setState((){
//           valueChoose = newValue;
//           });
//           },
//           items: listItem.map((valueItem) {
//            return DropdownMenuItem(
//             value: valueItem,
//             child: Text(valueItem),
          
          
         
//           ).tolist(),
//          ),
//         ),
//        )
//       }



//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'package:flutter/material.dart';
 
class LanguageConfirmation extends StatefulWidget {
 
  LanguageConfirmationState createState() => LanguageConfirmationState();
 
}
 
class LanguageConfirmationState extends State {
 
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
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(left: 240),
            onPressed: () {
              //Put your code here which you want to execute on close button click.
              Navigator.of(context).pop();
            },

            ),
              
            ]
           ),

         content: Text('Choose your language.',
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
            child: Text("Save",
             style: TextStyle
                  (
                    color: Color.fromRGBO(245, 197, 41, 1),
                    fontSize: 20.0,
                                     
                  ),
            ),
             style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red[50],
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