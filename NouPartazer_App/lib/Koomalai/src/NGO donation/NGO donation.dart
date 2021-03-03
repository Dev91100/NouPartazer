
import 'package:NouPartazer_App/Koomalai/src/Business%20Event%20Details/Business%20event%20details.dart';
import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/PageTitle.dart';

class NGODonation extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: Column
      (
        children: 
        [
          PageTitle
          (
            title: 'DONATIONS',
          ),

        ],
      //   Column
      //   (
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children:
      //     [
      //       const SizedBox
      //       (
      //         height: 25.0
      //       ),
      //       Container
      //       (
      //         margin: EdgeInsets.only
      //         (
      //           top:35.0
      //         ),
      //         alignment: Alignment.center,
      //         child: Text
      //         (
      //           "DONATIONS",
      //           style: TextStyle
      //           (
                  
      //             fontSize: 22.0,
      //             //fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),

      //       SizedBox
      //       (
      //         height: 25.0,
      //       ),

      //       ListTile
      //       (
      //           leading: Image
      //             (
      //             image: AssetImage('assets/PNG/jumbo profile.png'),
      //             height: 100.0,            
      //           ),

      //           title: Row
      //           (
      //             children:
      //             [
      //               Text
      //               (
      //                 "Grocery donation" ,
      //                 style: TextStyle
      //                 (     
      //                   fontSize: 18.0,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),

      //               SizedBox
      //               (
      //                 width: 50.0,
      //               ),

      //               Icon
      //               (
      //                 Icons.no_food_outlined,
      //                 color: Colors.greenAccent,
      //                 size: 20.0,
      //               ),

      //               SizedBox
      //               (
      //                 width: 20.0,
      //               ),

      //               Icon
      //               (
      //                 Icons.fastfood_outlined,
      //                 color: Colors.red,
      //                 size: 20.0,
      //               ),
      //             ]
      //           ),

      //           subtitle: Row
      //           (
      //             children:
      //             [
      //               SizedBox
      //               (
      //                 height: 20.0,
      //               ),

      //               Icon
      //               (
      //                 Icons.calendar_today,
      //                 color: Colors.blue,
      //                 size: 15.0,
      //               ),

      //               Text
      //               (
      //                 '19/01/2021',
      //                 style: TextStyle
      //                 (
                        
      //                 ),
      //               ),

      //               Icon
      //               (
      //                 Icons.location_on_outlined,
      //                 color: Colors.blue,
      //                 size: 15.0,
      //               ),

      //               Text
      //               (
      //                 'Jumbo Supermarket',
      //                 style: TextStyle(
                        
      //                 ),

      //               ),
      //             ]
      //           ),

      //           onTap: ()
      //           {
      //             Navigator.push
      //             (
      //               context,
      //               MaterialPageRoute
      //               (
      //                 builder: (context)
      //                 {
      //                     return BusinessEvent();
      //                 },
      //               ),
      //             );
      //           }
      //       ),

      //       SizedBox
      //       (
      //         height: 20.0,
      //       ),

      //       ListTile
      //       (
      //         leading: Image
      //         (
      //           image: AssetImage('assets/JPEG/swan profile.jpg'),
      //           height: 100.0,
      //         ),

      //         title: Row
      //         (
      //           children:
      //           [
      //             Text
      //             (
      //               "Grocery donation" ,
      //               style: TextStyle
      //               (
      //                 fontSize: 18.0,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),

      //             SizedBox
      //             (
      //               width: 50.0,
      //             ),

      //             SizedBox
      //             (
      //               width: 41.0,
      //             ),

      //             Icon
      //             (
      //               Icons.fastfood_outlined,
      //               color: Colors.red,
      //               size: 20.0,
      //             ),
      //           ]
      //         ),

      //           subtitle: Row
      //           (
      //               children:
      //               [
      //                 SizedBox
      //                 (
      //                   height: 20.0,
      //                 ),

      //                 Icon
      //                 (
      //                   Icons.calendar_today,
      //                   color: Colors.blue,
      //                   size: 15.0,
      //                 ),

      //                 Text
      //                 (
      //                   '19/01/2021',
      //                   style: TextStyle
      //                   (
                          
      //                   ),
      //                 ),

      //                 Icon
      //                 (
      //                   Icons.location_on_outlined,
      //                   color: Colors.blue,
      //                   size: 15.0,
      //                 ),

      //                 Text
      //                 (
      //                   'Jumbo Supermarket',
      //                   style: TextStyle
      //                   (
                          
      //                   ),
      //                 ),
      //               ]
      //           ),

      //           onTap: () {
      //           }

      //       ),

      //       SizedBox(
      //         height: 20.0,
      //       ),
      //       ListTile
      //       (
      //           leading:

      //           Image(
      //             image: AssetImage('assets/JPEG/huawei profile.jpg'),
      //             height: 100.0,
      //           ),

      //           title:
      //           Row(
      //               children: <Widget>[
      //                 Text("Grocery donation" ,
      //                   style: TextStyle(
                          
      //                     fontSize: 18.0,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),

      //                 SizedBox(
      //                   width: 50.0,
      //                 ),

      //                 Icon(
      //                   Icons.no_food_outlined,
      //                   color: Colors.greenAccent,
      //                   size: 20.0,
      //                 ),

      //                 SizedBox(
      //                   width: 20.0,
      //                 ),

      //                 Icon(
      //                   Icons.fastfood_outlined,
      //                   color: Colors.red,
      //                   size: 20.0,
      //                 ),
      //               ]
      //           ),


      //           subtitle:
      //           Row(
      //               children: <Widget>[
      //                 SizedBox(
      //                   height: 20.0,
      //                 ),
      //                 Icon(
      //                   Icons.calendar_today,
      //                   color: Colors.blue,
      //                   size: 15.0,
      //                 ),

      //                 Text('19/01/2021',
      //                   style: TextStyle(
                          
      //                     /*fontSize: 13.0,*/
      //                   ),

      //                 ),

      //                 Icon(
      //                   Icons.location_on_outlined,
      //                   color: Colors.blue,
      //                   size: 15.0,
      //                 ),

      //                 Text('Jumbo Supermarket',
      //                   style: TextStyle(
                          
      //                     /*fontSize: 13.0,*/
      //                   ),

      //                 ),

      //               ]
      //           ),
      //           onTap: () {

      //           }
      //       ),
      //     ],
      //   ),
      )
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

