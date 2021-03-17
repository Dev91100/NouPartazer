// import 'package:flutter/material.dart';

// class QrPopup
// {
//   String firstText;
//   String secondText;
//   double contentHorizontalPadding;
//   double contentTopPadding;

//   QrPopup
//   (
//     {
//       this.firstText,
//       this.secondText,
//       this.contentHorizontalPadding = 0.1,
//       this.contentTopPadding = 0.0,
//     }
//   );

//   StatefulBuilder displayDialog(BuildContext context)
//   {
//     final screen = MediaQuery.of(context).size;
//     var alertDialog = StatefulBuilder
//     (
//       builder: (context, setState)
//       {
//         return ButtonBarTheme
//         (
//           data: ButtonBarThemeData
//           (
//             alignment: MainAxisAlignment.center,
//             buttonPadding: EdgeInsets.all(15),
//             mainAxisSize: MainAxisSize.min,
            
//           ),
          
//           child: AlertDialog
//           (
            
//             shape: RoundedRectangleBorder
//             (
//               borderRadius: BorderRadius.circular(10),
//             ),
//             titlePadding: EdgeInsets.only(top: 0),
//             title: Row
//             (
//               mainAxisAlignment: MainAxisAlignment.end,
//               children:
//               [ 
//                 IconButton
//                 (
//                   icon: Icon(Icons.close),
//                   // alignment: Alignment.topRight,
//                   // padding: EdgeInsets.only(left: 240),
//                   onPressed: ()
//                   {
//                     //Put your code here which you want to execute on close button click.
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ]
//             ),

//             contentPadding: EdgeInsets.only
//             (
//               // left: 22,
//               // right: 30,
//               top: screen.height * contentTopPadding,
//               left: screen.width * contentHorizontalPadding,
//               right: screen.width * contentHorizontalPadding,
//             ),

//             content: Column(
            
//             // Flexible(
//             //       flex: 1,
//             //       fit: FlexFit.loose,
//                   children: [
//                   Text
//                   (
//                     firstText, 
//                     textAlign: TextAlign.center,
//                     style: TextStyle
//                     (
//                       //wordSpacing: 5,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20.0,
//                       //color: Color.fromRGBO(0, 0, 0, 1),
//                     )
//                   ),
            
//                   // child: TextFields
//                   // (
//                   //   isPassword: true,
//                   //   inputType: TextInputType.visiblePassword,
//                   // ),
                
            
//                   // Flexible(
//                   // flex: 1,
//                   // fit: FlexFit.loose,
//                    Text
//                     (
//                       secondText, 
//                       textAlign: TextAlign.center,
//                       style: TextStyle
//                       (
//                         //wordSpacing: 5,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20.0,
//                         //color: Color.fromRGBO(0, 0, 0, 1),
//                       )
//                     ),
//                   ]
//           )

//             )
                

//                 // Flexible(
//                 //   flex: 1,
//                   // child: TextFields
//                   // (
//                   //   isPassword: true,
//                   //   inputType: TextInputType.visiblePassword,
//                   // ),
//                 // )
              
            
//             // Text
//             // (
//             //   confirmationText,
//             //   textAlign: TextAlign.center,
//             //   style: TextStyle
//             //   (
//             //     //wordSpacing: 5,
//             //     fontWeight: FontWeight.bold,
//             //     fontSize: 20.0,
//             //     //color: Color.fromRGBO(0, 0, 0, 1),
//             //   )
//             // ),
  
//         );
//       }
//     );
    
//     return alertDialog;
//   }
// }
