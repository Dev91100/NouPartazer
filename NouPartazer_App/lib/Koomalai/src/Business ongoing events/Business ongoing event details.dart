
import 'package:NouPartazer_App/Koomalai/src/Business%20Confirmed%20events/Business%20confirmed%20event.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20Detailed%20profile/BusinessDetailedProfile.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20Event%20Ongoing/Business%20event%20ongoing.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

    class BusinessOngoingEvent extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {

    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          body: Expanded
          (
            child: ListView
            (
              
            )
          )
        );
      } 
    );

    // return Scaffold
    // (
    //   body: Stack
    //   (
    //     fit: StackFit.expand,
    //     children:
    //     [
    //         ListView
    //         (
    //         children:
    //         [
    //           Column
    //           (
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children:
    //           [
    //               Positioned
    //               (
    //               width: MediaQuery.of(context).size.width,
    //               top: MediaQuery.of(context).size.height / 6.0,

    //               child: Column
    //               (
    //                 children:
    //                 [
    //                   SizedBox
    //                   (
    //                     height: 20.0,
    //                   ), 

    //                   SizedBox
    //                   (
    //                     height: 5.0,
    //                   ),

    //                   SizedBox
    //                   (
    //                     width: 0.0,
    //                   ),

    //                   Container
    //                   (
    //               margin: EdgeInsets.only
    //               (
    //                 top: 2.0,
    //                 left: 10.0
    //               ),
    //               height: 410.0,
    //               width: 340.0,
    //               child: Card
    //               (
    //                 margin: EdgeInsets.symmetric
    //                 (
    //                   horizontal: 1.0,
    //                   vertical: 10.0
    //                 ),
    //                 elevation: 10.0,
    //                 shape: RoundedRectangleBorder
    //                 (
    //                   borderRadius: BorderRadius.circular(10.0),
    //                 ),
    //                 child: Padding
    //                 (
    //                   padding: const EdgeInsets.all(0.0),

    //                   child: Container
    //                   (

    //               margin: EdgeInsets.only
    //               (
    //                 top: 5.0,
    //                 left: 1.0
    //               ),

    //               child: Column
    //               (
    //                   children:
    //                   [

    //                       Row
    //                       (
    //                           children:
    //                           [      
    //                             MaterialButton
    //                             (
    //                             child: Image
    //                             (
    //                             image:AssetImage('assets/JPEG/Profile Photo.jpg'),
    //                               width: 60.0,


    //                             ),

    //                               onPressed: ()
    //                               {
    //                                 Navigator.push
    //                                 (
    //                                   context,
    //                                   MaterialPageRoute
    //                                   (
    //                                     builder: (context)
    //                                     {
    //                                       return BusinessDetailedProfile ();
    //                                     },
    //                                   ),
    //                                 );
    //                               },
    //                             ),
    //                       Container
    //                       (
    //                         height: 85.0,
    //                         width: 240.0,
    //                         margin: EdgeInsets.only
    //                         (
    //                           right:0.0,
    //                           left: 0.0
    //                         ),
    //                         child: Card
    //                         (
    //                               // color: Color.fromRGBO(245, 197, 41, 1),
    //                               margin: EdgeInsets.symmetric
    //                               (
    //                                 horizontal: 1.0,
    //                                 vertical: 10.0
    //                               ),

    //                               elevation: 5.0,
    //                               color: Colors.white,
    //                               shape: RoundedRectangleBorder
    //                               (
    //                                 borderRadius: BorderRadius.circular(10.0),
    //                               ),
    //                               child: Padding
    //                               (
    //                                 padding: const EdgeInsets.all(0.0),
    //                                 child: Column
    //                                 (
    //                                     crossAxisAlignment: CrossAxisAlignment.start,
    //                                     children:
    //                                     [
    //                                       Row
    //                                       (
    //                                         crossAxisAlignment: CrossAxisAlignment.start,
    //                                         children:
    //                                         [

    //                                           Container
    //                                           (
    //                                             margin: EdgeInsets.only
    //                                             (
    //                                               top: 10.0,
    //                                               left: 5.0
    //                                             ),
    //                                             child: Icon
    //                                             (
    //                                               Icons.calendar_today,
    //                                               size: 20.0,
    //                                               color: Colors.black,
    //                                             ),
    //                                           ),
    //                                           Container
    //                                           (
    //                                             margin: EdgeInsets.only
    //                                             (
    //                                               top: 10.0,
    //                                               left: 0.0
    //                                             ),
    //                                             child: Text
    //                                             (
    //                                               "19/01/2020",
    //                                               style: TextStyle
    //                                               (
    //                                                 fontSize: 15.0,
    //                                                 color: Colors.black,
    //                                               ),
    //                                             ),
    //                                           ),

    //                                           Container
    //                                           (
    //                                             margin: EdgeInsets.only
    //                                             (
    //                                               top: 10.0,
    //                                               left: 25.0
    //                                             ),
    //                                             child: Icon
    //                                             (
    //                                               Icons.access_time_outlined,
    //                                               size: 20.0,
    //                                               color: Colors.black,
    //                                             ),
    //                                           ),

    //                                           Container
    //                                           (
    //                                             margin: EdgeInsets.only
    //                                             (
    //                                               top: 10.0,
    //                                               left: 0.0
    //                                             ),
    //                                             child: Text
    //                                             (
    //                                               "9:00 - 17:00",
    //                                               style: TextStyle
    //                                               (
    //                                                 fontSize: 15.0,
    //                                                 color: Colors.black,
    //                                               ),
    //                                             ),
    //                                           )
    //                                         ]
    //                                       ),

    //                                     Row
    //                                     (
    //                                       crossAxisAlignment: CrossAxisAlignment.start,
    //                                       children:
    //                                       [
    //                                       Container
    //                                       (
    //                                         margin: EdgeInsets.only
    //                                         (
    //                                           top: 10.0,
    //                                           left: 5.0
    //                                         ),
    //                                         child: Icon
    //                                         (
    //                                           Icons.location_on_outlined,
    //                                           size: 20.0,
    //                                           color: Colors.black,
    //                                         ),
    //                                       ),

    //                                       Container
    //                                       (
    //                                         margin: EdgeInsets.only
    //                                         (
    //                                           top: 10.0,
    //                                           left: 0.0
    //                                         ),
    //                                         child: Text
    //                                         (
    //                                           "Jumbo Supermarket",
    //                                           style: TextStyle
    //                                           (
    //                                             fontSize: 15.0,
    //                                             color: Colors.black,
    //                                           ),
    //                                         ),
    //                                       ),
    //                               ]
    //                               ),
    //                                 ]
    //                               ),
    //                       )
    //                       )
    //                       )
    //                         ]
    //                     ),
    //                   Container
    //                               (
    //                                 alignment: Alignment.topLeft,
    //                                 margin: EdgeInsets.only
    //                                 (
    //                                   top:5.0,
    //                                   left:10.0
    //                                 ),

    //                                 child: Text
    //                                 (
    //                                   "Grocery Donation",
    //                                   style: TextStyle
    //                                   (
    //                                     fontSize: 20.0,
    //                                     fontWeight: FontWeight.bold,
    //                                     color: Colors.black,
    //                                   ),
    //                                 ),
    //                               ),

    //                             Container
    //                             (
    //                               margin: EdgeInsets.only
    //                               (
    //                                 top:3.0,
    //                                 left:10.0,
    //                                 right: 10.0
    //                               ),

    //                               child: Text
    //                               (
    //                           "Lorem ipsum dolor sit amet, consectetur "
    //                               "adipiscing elit. Morbi varius lectus et ante "
    //                               "sollicitudin mattis. Morbi maximus maximus"
    //                               " mi, non porttitor quam cursus sit amet. "
    //                               "Vivamus in nunc id massa pretium "
    //                               "elementum sed eu risus. Cras in ante ac "
    //                               "nunc pretium imperdiet at a nisi. Cras "
    //                               "placerat quis turpis a porttitor.",
    //                               style: TextStyle
    //                               (
    //                                 fontSize: 16.0,
    //                                 color: Colors.black54,
    //                               ),
    //                               textAlign: TextAlign.justify,
    //                             ),
    //                             ),

    //                             Container
    //                             (
    //                               child: Row
    //                               (
    //                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                   children:
    //                                   [
    //                                     Container
    //                                     (
    //                                       margin: EdgeInsets.only
    //                                       (
    //                                         top: 10.0,
    //                                         left: 10.0
    //                                       ),
    //                                       height: 40.0,
    //                                       width: 80.0,
    //                                       child: Card
    //                                       (
    //                                         color: Colors.black,
    //                                         margin: EdgeInsets.symmetric
    //                                         (
    //                                           horizontal: 1.0,
    //                                           vertical: 10.0
    //                                         ),
    //                                         elevation: 5.0,
    //                                         child: Padding
    //                                         (
    //                                           padding: const EdgeInsets.all(0.0),
    //                                           child: Row
    //                                           (
    //                                             crossAxisAlignment: CrossAxisAlignment.start,
    //                                             children:
    //                                             [
    //                                               SizedBox
    //                                               (
    //                                                 height: 20.0,
    //                                                 width:5.0,
    //                                               ),

    //                                               InkWell
    //                                               (
    //                                                 child: Icon
    //                                                 (
    //                                                   Icons.online_prediction_outlined,
    //                                                   size: 19.0,
    //                                                   color: Colors.white,
    //                                                 ),
    //                                                 onTap: () {},
    //                                               ),

    //                                               SizedBox
    //                                               (
    //                                                 width: 5.0,
    //                                                 height: 20.0,
    //                                               ),

    //                                               Text
    //                                               (
    //                                                 "Status",
    //                                                 style: TextStyle
    //                                                 (
    //                                                   fontSize: 15.0,
    //                                                   color: Colors.white,
    //                                                   fontWeight: FontWeight.bold,
    //                                                 ),
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ),

    //                                     Row
    //                                     (
    //                                         crossAxisAlignment: CrossAxisAlignment.start,
    //                                         children:
    //                                         [
    //                                           Container
    //                                           (
    //                                             margin: EdgeInsets.only
    //                                             (
    //                                               top: 10.0,
    //                                               left: 10.0
    //                                             ),
    //                                             height: 40.0,
    //                                             width: 110.0,
    //                                             child: Card
    //                                             (
    //                                               margin: EdgeInsets.symmetric
    //                                               (
    //                                                 horizontal: 1.0,
    //                                                 vertical: 10.0
    //                                               ),
    //                                               elevation: 10.0,
    //                                               color: Color.fromRGBO(245, 197, 41, 1),
    //                                               shape: RoundedRectangleBorder
    //                                               (
    //                                                 borderRadius: BorderRadius.circular(5.0),
    //                                                 side: BorderSide
    //                                                 (
    //                                                   color:Color.fromRGBO(245, 197, 41, 1)
    //                                                 ),
    //                                               ),
    //                                               child: Padding
    //                                               (
    //                                                 padding: const EdgeInsets.all(0.0),
    //                                                 child: Row
    //                                                 (
    //                                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                                   children:
    //                                                   [
    //                                                     SizedBox(
    //                                                       width: 25.0,
    //                                                       height: 20.0,
    //                                                     ),

    //                                                     Text(
    //                                                       "Pending",
    //                                                       style: TextStyle(
    //                                                         fontSize: 15.0,
    //                                                         color: Color.fromRGBO(245, 197, 41, 1),
    //                                                         fontWeight: FontWeight.bold,
    //                                                       ),
    //                                                     ),
    //                                                   ],
    //                                                 ),
    //                                               ),
    //                                             ),
    //                                           ),
    //                                         ]
    //                                     ),
    //                                   ]
    //                               )
    //                             ),

    //                             Container
    //                             (
    //                               child: Row
    //                               (
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               children:
    //                               [
    //                                 Container
    //                                 (
    //                                   margin: EdgeInsets.only(top: 10.0,left: 10.0),
    //                                   child: RaisedButton.icon
    //                                   (
    //                                     icon: Icon
    //                                     (
    //                                       Icons.visibility_outlined,
    //                                       color: Colors.white,
    //                                       size: 20.0
    //                                     ),

    //                                     label: Text
    //                                     (
    //                                       "View Details",
    //                                       style: TextStyle
    //                                       (
    //                                         color: Colors.white,
    //                                         fontSize: 18.0
    //                                       ),
    //                                     ),

    //                                     onPressed: ()
    //                                     {
    //                                       Navigator.push
    //                                       (
    //                                           context,
    //                                           MaterialPageRoute
    //                                           (
    //                                             builder: (context)
    //                                             {
    //                                               return BusinessEventOngoing();
    //                                             },
    //                                           ),
    //                                         );
    //                                     },

    //                                     color:Color.fromRGBO(41, 90, 245, 1),
    //                                     shape: RoundedRectangleBorder
    //                                     (
    //                                       borderRadius: BorderRadius.circular(10.0),
    //                                     ),
    //                                   ),
    //                                 ),

    //                                 Container
    //                                 (
    //                                   margin: EdgeInsets.only
    //                                   (
    //                                     top: 10.0,
    //                                     left: 10.0
    //                                   ),

    //                                   child: RaisedButton.icon
    //                                   (
    //                                     icon: Icon
    //                                     (
    //                                       Icons.phone_forwarded_outlined,
    //                                       color: Colors.white,
    //                                       size: 18.0
    //                                     ),
    //                                     label: Text
    //                                     (
    //                                       "Call",
    //                                       style: TextStyle
    //                                       (
    //                                         color: Colors.white,
    //                                         fontSize: 18.0
    //                                       ),
    //                                     ),

    //                                     onPressed: ()
    //                                     {

    //                                     },
    //                                     color:Color.fromRGBO(245, 197, 41, 1),
    //                                     shape: RoundedRectangleBorder(
    //                                       borderRadius: BorderRadius.circular(10.0),
    //                                       /*side: BorderSide(color:Color.fromRGBO(245, 197, 41, 1),width: 2.0),*/
    //                                     ),
    //                                   ),
    //                                 )
    //                               ]
    //                             )
    //                               )
    //                             ]
    //                           )
    //                       )

    //                       ),
    //                     ),
    //                   ),


    //                   SizedBox(
    //                     height: 5.0,
    //                   ),




    //                   SizedBox(
    //                     width: 0.0,
    //                   ),

    //                   Container(
    //                     margin: EdgeInsets.only(top: 2.0,left: 10.0),
    //                     /*color: Colors.lightGreen,*/
    //                     /*width: MediaQuery.of(context).size.width,*/
    //                     height: 410.0,
    //                     width: 340.0,
    //                     child: Card(
    //                       // color: Color.fromRGBO(245, 197, 41, 1),
    //                       margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
    //                       elevation: 10.0,
    //                       /*color: Colors.white,*/
    //                       shape: RoundedRectangleBorder(
    //                         borderRadius: BorderRadius.circular(10.0),
    //                         /*side: BorderSide(color:Colors.white),*/
    //                       ),
    //                       child: Padding(
    //                           padding: const EdgeInsets.all(0.0),

    //                           child: Container(

    //                               margin: EdgeInsets.only(top: 5.0,left: 1.0),

    //                               child: Column(
    //                                   children: <Widget>[

    //                                     Row(
    //                                         children: <Widget>[
    //                                           /*SocalIcon(
    //                                                  iconSrc: "assets/SVG/Profile Photo.svg",

    //                                                  press: () {
    //                                                    Navigator.push(
    //                                                      context,
    //                                                      MaterialPageRoute(
    //                                                        builder: (context) {
    //                                                          return Business();
    //                                                        },
    //                                                      ),
    //                                                    );
    //                                                  },
    //                                                ),*/
    //                                           MaterialButton(
    //                                             child: Image(
    //                                               image:AssetImage('assets/JPEG/Profile Photo.jpg'),
    //                                               width: 60.0,


    //                                             ),

    //                                             onPressed: () {
    //                                               Navigator.push(
    //                                                 context,
    //                                                 MaterialPageRoute(
    //                                                   builder: (context) {

    //                                                     return BusinessDetailedProfile();

    //                                                   },
    //                                                 ),
    //                                               );
    //                                             },
    //                                           ),
    //                                           Container(
    //                                               height: 85.0,
    //                                               width: 240.0,
    //                                               margin: EdgeInsets.only(right:0.0,left: 0.0),
    //                                               child: Card(
    //                                                 // color: Color.fromRGBO(245, 197, 41, 1),
    //                                                   margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),

    //                                                   elevation: 5.0,
    //                                                   color: Colors.white,
    //                                                   shape: RoundedRectangleBorder(
    //                                                     borderRadius: BorderRadius.circular(10.0),
    //                                                     /*side: BorderSide(color:Colors.white),*/
    //                                                   ),
    //                                                   child: Padding(
    //                                                     padding: const EdgeInsets.all(0.0),
    //                                                     child: Column(
    //                                                         crossAxisAlignment: CrossAxisAlignment.start,
    //                                                         children: <Widget>[

    //                                                           Row(
    //                                                               crossAxisAlignment: CrossAxisAlignment.start,
    //                                                               children: <Widget>[

    //                                                                 Container(
    //                                                                   margin: EdgeInsets.only(top: 10.0,left: 5.0),
    //                                                                   child: Icon(
    //                                                                     Icons.calendar_today,
    //                                                                     size: 20.0,
    //                                                                     color: Colors.black,
    //                                                                   ),

    //                                                                 ),

    //                                                                 Container(
    //                                                                   margin: EdgeInsets.only(top: 10.0,left: 0.0),
    //                                                                   child: Text(
    //                                                                     "19/01/2020",
    //                                                                     style: TextStyle(
    //                                                                       fontSize: 15.0,
    //                                                                       color: Colors.black,
    //                                                                       /*fontWeight: FontWeight.bold,*/
    //                                                                     ),
    //                                                                   ),



    //                                                                 ),

    //                                                                 Container(
    //                                                                   margin: EdgeInsets.only(top: 10.0,left: 25.0),
    //                                                                   child: Icon(
    //                                                                     Icons.access_time_outlined,
    //                                                                     size: 20.0,
    //                                                                     color: Colors.black,
    //                                                                   ),

    //                                                                 ),

    //                                                                 Container(
    //                                                                   margin: EdgeInsets.only(top: 10.0,left: 0.0),
    //                                                                   child: Text(
    //                                                                     "9:00 - 17:00",
    //                                                                     style: TextStyle(
    //                                                                       fontSize: 15.0,
    //                                                                       color: Colors.black,
    //                                                                       /*fontWeight: FontWeight.bold,*/
    //                                                                     ),
    //                                                                   ),



    //                                                                 )
    //                                                               ]
    //                                                           ),


    //                                                           Row(
    //                                                               crossAxisAlignment: CrossAxisAlignment.start,
    //                                                               children: <Widget>[
    //                                                                 Container(
    //                                                                   margin: EdgeInsets.only(top: 10.0,left: 5.0),
    //                                                                   child: Icon(
    //                                                                     Icons.location_on_outlined,
    //                                                                     size: 20.0,
    //                                                                     color: Colors.black,
    //                                                                   ),

    //                                                                 ),

    //                                                                 Container(
    //                                                                   margin: EdgeInsets.only(top: 10.0,left: 0.0),
    //                                                                   child: Text(
    //                                                                     "Jumbo Supermarket",
    //                                                                     style: TextStyle(
    //                                                                       fontSize: 15.0,
    //                                                                       color: Colors.black,
    //                                                                       /*fontWeight: FontWeight.bold,*/
    //                                                                     ),
    //                                                                   ),



    //                                                                 ),



    //                                                               ]
    //                                                           ),
    //                                                         ]
    //                                                     ),
    //                                                   )
    //                                               )
    //                                           )
    //                                         ]
    //                                     ),


    //                                     Container(
    //                                       alignment: Alignment.topLeft,
    //                                       margin: EdgeInsets.only(top:5.0,left:10.0),
    //                                       child: Text(
    //                                         "Grocery Donation",

    //                                         style: TextStyle(
    //                                           fontSize: 20.0,
    //                                           fontWeight: FontWeight.bold,
    //                                           color: Colors.black,
                                              
    //                                         ),

    //                                       ),
    //                                     ),

    //                                     Container(
    //                                       margin: EdgeInsets.only(top:3.0,left:10.0,right: 10.0),
    //                                       child: Text(
    //                                         "Lorem ipsum dolor sit amet, consectetur "
    //                                             "adipiscing elit. Morbi varius lectus et ante "
    //                                             "sollicitudin mattis. Morbi maximus maximus"
    //                                             " mi, non porttitor quam cursus sit amet. "
    //                                             "Vivamus in nunc id massa pretium "
    //                                             "elementum sed eu risus. Cras in ante ac "
    //                                             "nunc pretium imperdiet at a nisi. Cras "
    //                                             "placerat quis turpis a porttitor.",
    //                                         style: TextStyle(
    //                                           fontSize: 16.0,

    //                                           color: Colors.black54,
    //                                         ),
    //                                         textAlign: TextAlign.justify,
    //                                       ),
    //                                     ),

    //                                     Container(
    //                                         child: Row(
    //                                             crossAxisAlignment: CrossAxisAlignment.start,
    //                                             children: <Widget>[

    //                                               Container(
    //                                                 margin: EdgeInsets.only(top: 10.0,left: 10.0),
    //                                                 /*color: Colors.lightGreen,*/
    //                                                 /*width: MediaQuery.of(context).size.width,*/
    //                                                 height: 40.0,
    //                                                 width: 80.0,
    //                                                 child: Card(
    //                                                   color: Colors.black,
    //                                                   margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
    //                                                   elevation: 5.0,
    //                                                   child: Padding(
    //                                                     padding: const EdgeInsets.all(0.0),
    //                                                     child: Row(
    //                                                       crossAxisAlignment: CrossAxisAlignment.start,
    //                                                       children: <Widget>[
    //                                                         /*Text(
    //                           "About",
    //                           style: TextStyle(
    //                             fontSize: 20.0,
    //                             fontWeight: FontWeight.bold,
    //                             color: Colors.lightBlue,
    //                           ),
    //                         ),*/

    //                                                         SizedBox(
    //                                                           height: 20.0,
    //                                                           width:5.0,
    //                                                         ),

    //                                                         InkWell(
    //                                                           child: Icon(
    //                                                             Icons.online_prediction_outlined,
    //                                                             size: 19.0,
    //                                                             color: Colors.white,
    //                                                           ),
    //                                                           onTap: () {},
    //                                                         ),

    //                                                         SizedBox(
    //                                                           width: 5.0,
    //                                                           height: 20.0,
    //                                                         ),

    //                                                         Text(
    //                                                           "Status",
    //                                                           style: TextStyle(
    //                                                             fontSize: 15.0,
    //                                                             color: Colors.white,
    //                                                             fontWeight: FontWeight.bold,
    //                                                           ),
    //                                                         ),




    //                                                       ],
    //                                                     ),
    //                                                   ),
    //                                                 ),
    //                                               ),

    //                                               Row(
    //                                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                                   children: <Widget>[
    //                                                     Container(
    //                                                       margin: EdgeInsets.only(top: 10.0,left: 10.0),
    //                                                       /*color: Colors.lightGreen,*/
    //                                                       /*width: MediaQuery.of(context).size.width,*/
    //                                                       height: 40.0,
    //                                                       width: 110.0,
    //                                                       child: Card(
    //                                                         // color: Color.fromRGBO(245, 197, 41, 1),
    //                                                         margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
    //                                                         elevation: 10.0,
    //                                                         color: Colors.blue,
    //                                                         shape: RoundedRectangleBorder(
    //                                                           borderRadius: BorderRadius.circular(5.0),
    //                                                           side: BorderSide(color:Color.fromRGBO(41, 90, 245, 1)),
    //                                                         ),
    //                                                         child: Padding(
    //                                                           padding: const EdgeInsets.all(0.0),
    //                                                           child: Row(
    //                                                             crossAxisAlignment: CrossAxisAlignment.start,
    //                                                             children:
    //                                                             [
    //                                                               SizedBox
    //                                                               (
    //                                                                 width: 20.0,
    //                                                                 height: 20.0,
    //                                                               ),

    //                                                               Text
    //                                                               (
    //                                                                 "Confirmed",
    //                                                                 style: TextStyle
    //                                                                 (
    //                                                                   fontSize: 15.0,
    //                                                                   color: Color.fromRGBO(41, 90, 245, 1),
    //                                                                   fontWeight: FontWeight.bold,
    //                                                                 ),
    //                                                               ),
    //                                                             ],
    //                                                           ),
    //                                                         ),
    //                                                       ),
    //                                                     ),
    //                                                   ]
    //                                               ),
    //                                             ]
    //                                         )
    //                                     ),

    //                                     Container
    //                                     (
    //                                       child: Row
    //                                       (
    //                                         crossAxisAlignment: CrossAxisAlignment.start,
    //                                         children:
    //                                         [
    //                                           Container
    //                                           (
    //                                             margin: EdgeInsets.only
    //                                             (
    //                                               top: 10.0,
    //                                               left: 10.0
    //                                             ),

    //                                             child: RaisedButton.icon
    //                                             (
    //                                               icon: Icon
    //                                               (
    //                                                 Icons.visibility_outlined,
    //                                                 color: Colors.white,
    //                                                 size: 20.0
    //                                               ),

    //                                               label: Text
    //                                               (
    //                                                 "View Details",
    //                                                 style: TextStyle
    //                                                 (
    //                                                   color: Colors.white,
    //                                                   fontSize: 18.0
    //                                                 ),
    //                                               ),

    //                                               onPressed: () {
    //                                                 Navigator.push(
    //                                                       context,
    //                                                       MaterialPageRoute(
    //                                                         builder: (context) {

    //                                                           return BusinessConfirmed();

    //                                                         },
    //                                                       ),
    //                                                     );
    //                                               },

    //                                               color:Color.fromRGBO(41, 90, 245, 1),
    //                                               shape: RoundedRectangleBorder(
    //                                                 borderRadius: BorderRadius.circular(10.0),
    //                                                 /*side: BorderSide(color:Color.fromRGBO(245, 197, 41, 1),width: 2.0),*/
    //                                               ),
    //                                             ),
    //                                           ),

    //                                           Container
    //                                           (
    //                                             margin: EdgeInsets.only
    //                                             (
    //                                               top: 10.0,
    //                                               left: 10.0
    //                                             ),

    //                                             child: RaisedButton.icon
    //                                             (
    //                                               icon: Icon
    //                                               (
    //                                                 Icons.phone_forwarded_outlined,
    //                                                 color: Colors.white,
    //                                                 size: 18.0
    //                                               ),

    //                                               label: Text
    //                                               (
    //                                                 "Call",
    //                                                 style: TextStyle
    //                                                 (
    //                                                   color: Colors.white,
    //                                                   fontSize: 18.0
    //                                                 ),
    //                                               ),

    //                                               onPressed: () {},

    //                                               color:Color.fromRGBO(245, 197, 41, 1),

    //                                               shape: RoundedRectangleBorder
    //                                               (
    //                                                 borderRadius: BorderRadius.circular(10.0),
    //                                               ),
    //                                             ),
    //                                           )
    //                                     ]
    //                                   )
    //                                 )
    //                               ]
    //                             )
    //                           )
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               )
    //             ]
    //           ),
    //         ]
    //       )
    //     ]
    //   )
    // );
  }

  openurl()
  {
    String url1="WWW.jumbo.mu";
    launch(url1);
  }

  Container _buildDivider()
  {
    return Container
    (
      margin: const EdgeInsets.symmetric
      (
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }

}

class GetClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size)
  {
    var path = Path();
    path.lineTo(0.0, size.height / 2.2);
    path.lineTo(size.width + 125.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)
  {
    return true;
  }
}
