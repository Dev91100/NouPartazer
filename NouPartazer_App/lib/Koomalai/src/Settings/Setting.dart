import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';
import 'package:NouPartazer_App/Atish/components/ListTileModel.dart';


class Settings extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: PageTitle(text: 'SETTINGS'),

      body: Container
      (
        margin:EdgeInsets.only
        (
          left: 20,
          right: 20
        ),
        child: Column
        (
          children:
          [
            ListTileModel
            (
              leadingIcon: Icons.notifications_none_outlined,
              titleText: 'Notifications',
              subtitleText: 'Receive notifications from the app',
              trailingIcon: Icons.toggle_on,
            ),

            ListTileModel
            (
              leadingIcon: Icons.notifications_none_outlined,
              titleText: 'Notifications',
              subtitleText: 'Receive notifications from the app',
              trailingIcon: Icons.toggle_on,
            ),

            ListTileModel
            (
              leadingIcon: Icons.notifications_none_outlined,
              titleText: 'Notifications',
              subtitleText: 'Receive notifications from the app',
              trailingIcon: Icons.toggle_on,
            ),

            ListTileModel
            (
              leadingIcon: Icons.notifications_none_outlined,
              titleText: 'Notifications',
              subtitleText: 'Receive notifications from the app',
              trailingIcon: Icons.toggle_on,
            ),

            ListTileModel
            (
              leadingIcon: Icons.notifications_none_outlined,
              titleText: 'Notifications',
              subtitleText: 'Receive notifications from the app',
              trailingIcon: Icons.toggle_on,
            ),
          ],
        ),
      ),
    );
  }
}


//                       ListTile(
//                         title: Text('Language',
//                           style: TextStyle(
                            
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         subtitle: Text('English',
//                           style: TextStyle(
                            
//                             fontSize: 13.0,

//                           ),
//                         ) ,
//                         leading: Icon(Icons.g_translate, color: Colors.black87,
//                           size: 30.0,),
//                         trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
//                         onTap: () {
//                           //open change password
//                         },
//                       ),

//                       ListTile(
//                         title: Text('Security',
//                           style: TextStyle(
                            
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         subtitle: Text('Update password and account settings',
//                           style: TextStyle(
                            
//                             fontSize: 13.0,

//                           ),
//                         ) ,
//                         leading: Icon(Icons.security_outlined, color: Colors.black87,
//                           size: 30.0,),
//                         trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) {
//                                 return Security();
//                               },
//                             ),
//                           );
//                         },
//                       ),

//                       ListTile(
//                         title: Text('Help & Support',
//                           style: TextStyle(
                            
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         subtitle: Text('For any questions, contact us',
//                           style: TextStyle(
                            
//                             fontSize: 13.0,

//                           ),
//                         ) ,
//                         leading: Icon(Icons.support_agent_outlined, color: Colors.black87,
//                           size: 30.0,),
//                         trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) {
//                                 return  HelpAndSupport();
//                               },
//                             ),
//                           );
//                         },
//                       ),


//                       ListTile(
//                         title: Text('Log out',
//                           style: TextStyle(
                            
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),

//                         leading: Icon(Icons.logout, color: Colors.black87,
//                           size: 30.0,),
//                         trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black87,size: 30.0,),
//                         onTap: () {
//                           //open change location
//                         },
//                       ),

//                     ],
//                   ),
//         ],
//       ),
//           )
//         ]
//     )
//           );
//   }

//   Container _buildDivider() {
//     return Container(
//       margin: const EdgeInsets.symmetric(
//         horizontal: 8.0,
//       ),
//       width: double.infinity,
//       height: 1.0,
//       color: Colors.grey.shade400,
//     );
//   }



//   }

