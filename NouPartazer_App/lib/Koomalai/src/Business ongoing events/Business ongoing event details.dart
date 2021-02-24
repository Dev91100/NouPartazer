
import 'package:NouPartazer_App/Koomalai/Screens/Business/Business.dart';
import 'package:NouPartazer_App/Koomalai/src/Business ongoing events/components/social_icon.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_button.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20Confirmed%20Event%20Details/Business%20confirmed%20event%20details.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20Confirmed%20events/Business%20confirmed%20event.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20Detailed%20profile/BusinessDetailedProfile.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20Event%20Ongoing/Business%20event%20ongoing.dart';
import 'package:NouPartazer_App/Koomalai/src/Business%20profile/BusinessProfile.dart';
import 'package:NouPartazer_App/Koomalai/src/BusinessSettings/Setting.dart';
import 'package:NouPartazer_App/Koomalai/src/Help%20and%20support/helpAndSupport.dart';
import 'package:NouPartazer_App/Koomalai/src/Security/Security.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/Setting.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/profilePage.dart';
import 'package:NouPartazer_App/Koomalai/src/screens/BusinessmainScreen.dart';
import 'package:NouPartazer_App/Koomalai/src/screens/mainScreen.dart';
import 'package:NouPartazer_App/Koomalai/src/widget/bottomSheetWidget.dart';
import 'package:NouPartazer_App/Koomalai/src/widget/foodCategory.dart';
import 'package:NouPartazer_App/Koomalai/src/widget/foodCategoryStories.dart';
import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/components/body.dart';
import 'package:NouPartazer_App/Koomalai/splashscreen.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:NouPartazer_App/Koomalai/src/NGO profile/components/body.dart';

    class BusinessOngoingEvent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

            ListView(
            children: <Widget>[
            /*padding: const EdgeInsets.all(0.0),*/

                Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Positioned(
                      width: MediaQuery.of(context).size.width,
                  top: MediaQuery.of(context).size.height / 6.0,

            // left: 76.0,
                  child: Column(
                    children: <Widget>[

                                    SizedBox(
                                    height: 20.0,

                                  ),
                      /*Container(
                        margin: EdgeInsets.only(left: 26.0),
                        child: Align(
                        alignment: Alignment.topLeft,

                          child: Text(
                        "DATE & TIME",
                        style: TextStyle(
                          fontFamily: "risotto",
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ),
                      ),


                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 5.0,left: 25.0),
                              /*color: Colors.lightGreen,*/
                              /*width: MediaQuery.of(context).size.width,*/
                              height: 120.0,
                              width: 150.0,
                              child: Card(
                                // color: Colors.amber,
                                margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                                elevation: 10.0,
                                color: Colors.grey[200],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  /*side: BorderSide(color:Colors.white),*/
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      /*Text(
                            "About",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue,
                            ),
                          ),*/



                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(top: 18.0,left: 25.0),
                                      child: Icon(
                                        Icons.date_range_outlined,
                                        size: 30.0,
                                        color: Colors.black,
                                      ),

                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 25.0),
                                      child: Text(
                                        "19/01/2020",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),



                                    )
                                    ],
                                  ),
                                  ]
                                ),
                              ),
                            ),


                            ),

                            Container(
                                margin: EdgeInsets.only(top: 5.0,left: 15.0),
                                /*color: Colors.lightGreen,*/
                                /*width: MediaQuery.of(context).size.width,*/
                                height: 120.0,
                                width: 150.0,
                                child: Card(
                                  // color: Colors.amber,
                                  margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                                  elevation: 10.0,
                                  color: Colors.grey[200],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    /*side: BorderSide(color:Colors.white),*/
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          /*Text(
                            "About",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue,
                            ),
                          ),*/



                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                margin: EdgeInsets.only(top: 18.0,left: 25.0),
                                                child: Icon(
                                                  Icons.access_time_outlined,
                                                  size: 30.0,
                                                  color: Colors.black,
                                                ),

                                              ),

                                              Container(
                                                margin: EdgeInsets.only(top: 10.0,left: 25.0),
                                                child: Text(
                                                  "9:00 - 17:00",
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),



                                              )
                                            ],
                                          ),
                                        ]
                                    ),
                                  ),
                                ),
                            )


                                ]
                      ),

                      SizedBox(

                        height: 20.0,
                      ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                        height: 20.0,
                                      ),

                                      Text(
                                        "FOOD TYPE ",
                                        style: TextStyle(
                                          fontFamily: "risotto",
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                        height: 20.0,
                                      ),
                                      InkWell(
                                        child: Icon(
                                          Icons.info_outline,
                                          size: 25.0,
                                          color: Colors.black54,
                                        ),
                                        onTap: () {},
                                      ),
                                    ],
                                  ),


                                  SizedBox(
                                    height: 10.0,

                                  ),


                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 5.0,left: 25.0),
                              /*color: Colors.lightGreen,*/
                              /*width: MediaQuery.of(context).size.width,*/
                              height: 120.0,
                              width: 150.0,
                              child: Card(
                                // color: Colors.amber,
                                margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                                elevation: 10.0,
                                color: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  /*side: BorderSide(color:Colors.white),*/
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        /*Text(
                            "About",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue,
                            ),
                          ),*/



                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(top: 18.0,left: 25.0),
                                              child: Icon(
                                                Icons.fastfood_outlined,
                                                size: 30.0,
                                                color: Colors.white,
                                              ),

                                            ),

                                            Container(
                                              margin: EdgeInsets.only(top: 10.0,left: 25.0),
                                              child: Text(
                                                "Perishable",
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),



                                            )
                                          ],
                                        ),
                                      ]
                                  ),
                                ),
                              ),


                            ),

                            Container(
                              margin: EdgeInsets.only(top: 5.0,left: 15.0),
                              /*color: Colors.lightGreen,*/
                              /*width: MediaQuery.of(context).size.width,*/
                              height: 120.0,
                              width: 150.0,
                              child: Card(
                                // color: Colors.amber,
                                margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                                elevation: 10.0,
                                color: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  /*side: BorderSide(color:Colors.white),*/
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        /*Text(
                            "About",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue,
                            ),
                          ),*/



                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(top: 18.0,left: 25.0),
                                              child: Icon(
                                                Icons.no_food_outlined,
                                                size: 30.0,
                                                color: Colors.white,
                                              ),

                                            ),

                                            Container(
                                              margin: EdgeInsets.only(top: 10.0,left: 25.0),
                                              child: Text(
                                                "Non-Perishable",
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),



                                            )
                                          ],
                                        ),
                                      ]
                                  ),
                                ),
                              ),
                            )


                          ]
                      ),


                                  SizedBox(
                                    height: 10.0,
                                  ),
                                 Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                      ),


                                      Text(
                                        "Description",

                                        style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                          /*color: Colors.black,*/
                                        ),

                                      ),

                                    ],
                                  ),*/


                                    SizedBox(
                                      height: 5.0,
                                    ),




                                    SizedBox(
                                      width: 0.0,
                                    ),

                        Container(
                            margin: EdgeInsets.only(top: 2.0,left: 10.0),
                            /*color: Colors.lightGreen,*/
                            /*width: MediaQuery.of(context).size.width,*/
                            height: 410.0,
                            width: 340.0,
                            child: Card(
                              // color: Colors.amber,
                                margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                                elevation: 10.0,
                                /*color: Colors.white,*/
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  /*side: BorderSide(color:Colors.white),*/
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),

                                      child: Container(

                                        margin: EdgeInsets.only(top: 5.0,left: 1.0),

                                        child: Column(
                                            children: <Widget>[

                                               Row(
                                                   children: <Widget>[
                                                   /*SocalIcon(
                                                     iconSrc: "assets/SVG/Profile Photo.svg",

                                                     press: () {
                                                       Navigator.push(
                                                         context,
                                                         MaterialPageRoute(
                                                           builder: (context) {
                                                             return Business();
                                                           },
                                                         ),
                                                       );
                                                     },
                                                   ),*/
                                                     MaterialButton(
                                                     child: Image(
                                                     image:AssetImage('assets/JPEG/Profile Photo.jpg'),
                                                       width: 60.0,


                                                     ),

                                                       onPressed: () {
                                                         Navigator.push(
                                                           context,
                                                           MaterialPageRoute(
                                                             builder: (context) {

                                                               return BusinessDetailedProfile ();

                                                             },
                                                           ),
                                                         );
                                                       },
                                                     ),
                                                Container(
                                                 height: 85.0,
                                                 width: 240.0,
                                                  margin: EdgeInsets.only(right:0.0,left: 0.0),
                                                  child: Card(
                                                       // color: Colors.amber,
                                                       margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),

                                                       elevation: 5.0,
                                                       color: Colors.white,
                                                       shape: RoundedRectangleBorder(
                                                         borderRadius: BorderRadius.circular(10.0),
                                                         /*side: BorderSide(color:Colors.white),*/
                                                       ),
                                                       child: Padding(
                                                         padding: const EdgeInsets.all(0.0),
                                                         child: Column(
                                                             crossAxisAlignment: CrossAxisAlignment.start,
                                                             children: <Widget>[

                                                               Row(
                                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                                 children: <Widget>[

                                                                   Container(
                                                                     margin: EdgeInsets.only(top: 10.0,left: 5.0),
                                                                     child: Icon(
                                                                       Icons.calendar_today,
                                                                       size: 20.0,
                                                                       color: Colors.black,
                                                                     ),

                                                                   ),

                                                                   Container(
                                                                     margin: EdgeInsets.only(top: 10.0,left: 0.0),
                                                                     child: Text(
                                                                       "19/01/2020",
                                                                       style: TextStyle(
                                                                         fontSize: 15.0,
                                                                         color: Colors.black,
                                                                         /*fontWeight: FontWeight.bold,*/
                                                                       ),
                                                                     ),



                                                                   ),

                                                                   Container(
                                                                     margin: EdgeInsets.only(top: 10.0,left: 25.0),
                                                                     child: Icon(
                                                                       Icons.access_time_outlined,
                                                                       size: 20.0,
                                                                       color: Colors.black,
                                                                     ),

                                                                   ),

                                                                   Container(
                                                                     margin: EdgeInsets.only(top: 10.0,left: 0.0),
                                                                     child: Text(
                                                                       "9:00 - 17:00",
                                                                       style: TextStyle(
                                                                         fontSize: 15.0,
                                                                         color: Colors.black,
                                                                         /*fontWeight: FontWeight.bold,*/
                                                                       ),
                                                                     ),



                                                                   )
                                                                 ]
                                                               ),


                                                              Row(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: <Widget>[
                                                               Container(
                                                                 margin: EdgeInsets.only(top: 10.0,left: 5.0),
                                                                 child: Icon(
                                                                   Icons.location_on_outlined,
                                                                   size: 20.0,
                                                                   color: Colors.black,
                                                                 ),

                                                               ),

                                                               Container(
                                                                 margin: EdgeInsets.only(top: 10.0,left: 0.0),
                                                                 child: Text(
                                                                   "Jumbo Supermarket",
                                                                   style: TextStyle(
                                                                     fontSize: 15.0,
                                                                     color: Colors.black,
                                                                     /*fontWeight: FontWeight.bold,*/
                                                                   ),
                                                                 ),



                                                               ),



                                                        ]
                                                       ),
                                                         ]
                                                       ),
                                               )
                                                )
                                                )
                                                  ]
                                              ),


                                            Container(
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(top:5.0,left:10.0),
                                              child: Text(
                                                "Grocery Donation",

                                                style: TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontFamily: "risotto",
                                                ),

                                              ),
                                            ),

                                          Container(
                                            margin: EdgeInsets.only(top:3.0,left:10.0,right: 10.0),
                                              child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur "
                                            "adipiscing elit. Morbi varius lectus et ante "
                                            "sollicitudin mattis. Morbi maximus maximus"
                                            " mi, non porttitor quam cursus sit amet. "
                                            "Vivamus in nunc id massa pretium "
                                            "elementum sed eu risus. Cras in ante ac "
                                            "nunc pretium imperdiet at a nisi. Cras "
                                            "placerat quis turpis a porttitor.",
                                            style: TextStyle(
                                              fontSize: 16.0,

                                              color: Colors.black54,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                          ),

                                          Container(
                                            child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[

                                                  Container(
                                                    margin: EdgeInsets.only(top: 10.0,left: 10.0),
                                                    /*color: Colors.lightGreen,*/
                                                    /*width: MediaQuery.of(context).size.width,*/
                                                    height: 40.0,
                                                    width: 80.0,
                                                    child: Card(
                                                      color: Colors.black,
                                                      margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                                                      elevation: 5.0,
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(0.0),
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            /*Text(
                              "About",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue,
                              ),
                            ),*/

                                                            SizedBox(
                                                              height: 20.0,
                                                              width:5.0,
                                                            ),

                                                            InkWell(
                                                              child: Icon(
                                                                Icons.online_prediction_outlined,
                                                                size: 19.0,
                                                                color: Colors.white,
                                                              ),
                                                              onTap: () {},
                                                            ),

                                                            SizedBox(
                                                              width: 5.0,
                                                              height: 20.0,
                                                            ),

                                                            Text(
                                                              "Status",
                                                              style: TextStyle(
                                                                fontSize: 15.0,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),




                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                          margin: EdgeInsets.only(top: 10.0,left: 10.0),
                                                          /*color: Colors.lightGreen,*/
                                                          /*width: MediaQuery.of(context).size.width,*/
                                                          height: 40.0,
                                                          width: 110.0,
                                                          child: Card(
                                                            // color: Colors.amber,
                                                            margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                                                            elevation: 10.0,
                                                            color: Colors.amber[50],
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(5.0),
                                                              side: BorderSide(color:Colors.amber),
                                                            ),
                                                            child: Padding(
                                                              padding: const EdgeInsets.all(0.0),
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: <Widget>[
                                                                  /*Text(
                              "About",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue,
                              ),
                            ),*/


                                                                  SizedBox(
                                                                    width: 25.0,
                                                                    height: 20.0,
                                                                  ),

                                                                  Text(
                                                                    "Pending",
                                                                    style: TextStyle(
                                                                      fontSize: 15.0,
                                                                      color: Colors.amber,
                                                                      fontWeight: FontWeight.bold,
                                                                    ),
                                                                  ),




                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ]
                                                  ),



                                                ]
                                            )

                                        ),

                                          Container(
                                              child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[

                                                    Container(
                                                      margin: EdgeInsets.only(top: 10.0,left: 10.0),


                                                      child: RaisedButton.icon(
                                                        icon: Icon(Icons.visibility_outlined,color: Colors.white,size: 20.0,),

                                                        label: Text("View Details",style: TextStyle(color: Colors.white, fontSize: 18.0),),

                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) {

                                                                  return BusinessEventOngoing();

                                                                },
                                                              ),
                                                            );
                                                        },

                                                        color:Colors.blueAccent[700],
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                          /*side: BorderSide(color:Colors.amber,width: 2.0),*/
                                                        ),
                                                      ),
                                                    ),

                                                    Container(
                                                      margin: EdgeInsets.only(top: 10.0,left: 10.0),

                                                      child: RaisedButton.icon(
                                                        icon: Icon(Icons.phone_forwarded_outlined,color: Colors.white,size: 18.0,),
                                                        label: Text("Call",style: TextStyle(color: Colors.white, fontSize: 18.0),),

                                                        onPressed: () {
                                                          /*Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) {

                                                                  return SecondMainScreen();

                                                                },
                                                              ),
                                                            );*/
                                                        },

                                                        color:Colors.amber,

                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                          /*side: BorderSide(color:Colors.amber,width: 2.0),*/
                                                        ),
                                                      ),
                                                    )



                                                  ]
                                              )
                                        )


                                         ]
                                        )




                                       /*child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur "
                                            "adipiscing elit. Morbi varius lectus et ante "
                                            "sollicitudin mattis. Morbi maximus maximus"
                                            " mi, non porttitor quam cursus sit amet. "
                                            "Vivamus in nunc id massa pretium "
                                            "elementum sed eu risus. Cras in ante ac "
                                            "nunc pretium imperdiet at a nisi. Cras "
                                            "placerat quis turpis a porttitor.",
                                        style: TextStyle(
                                          fontSize: 16.0,

                                          color: Colors.black54,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),*/

                                    )

                                    ),
                          ),
                      ),


                      SizedBox(
                        height: 5.0,
                      ),




                      SizedBox(
                        width: 0.0,
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 2.0,left: 10.0),
                        /*color: Colors.lightGreen,*/
                        /*width: MediaQuery.of(context).size.width,*/
                        height: 410.0,
                        width: 340.0,
                        child: Card(
                          // color: Colors.amber,
                          margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                          elevation: 10.0,
                          /*color: Colors.white,*/
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            /*side: BorderSide(color:Colors.white),*/
                          ),
                          child: Padding(
                              padding: const EdgeInsets.all(0.0),

                              child: Container(

                                  margin: EdgeInsets.only(top: 5.0,left: 1.0),

                                  child: Column(
                                      children: <Widget>[

                                        Row(
                                            children: <Widget>[
                                              /*SocalIcon(
                                                     iconSrc: "assets/SVG/Profile Photo.svg",

                                                     press: () {
                                                       Navigator.push(
                                                         context,
                                                         MaterialPageRoute(
                                                           builder: (context) {
                                                             return Business();
                                                           },
                                                         ),
                                                       );
                                                     },
                                                   ),*/
                                              MaterialButton(
                                                child: Image(
                                                  image:AssetImage('assets/JPEG/Profile Photo.jpg'),
                                                  width: 60.0,


                                                ),

                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) {

                                                        return BusinessDetailedProfile();

                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                              Container(
                                                  height: 85.0,
                                                  width: 240.0,
                                                  margin: EdgeInsets.only(right:0.0,left: 0.0),
                                                  child: Card(
                                                    // color: Colors.amber,
                                                      margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),

                                                      elevation: 5.0,
                                                      color: Colors.white,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.0),
                                                        /*side: BorderSide(color:Colors.white),*/
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(0.0),
                                                        child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: <Widget>[

                                                              Row(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: <Widget>[

                                                                    Container(
                                                                      margin: EdgeInsets.only(top: 10.0,left: 5.0),
                                                                      child: Icon(
                                                                        Icons.calendar_today,
                                                                        size: 20.0,
                                                                        color: Colors.black,
                                                                      ),

                                                                    ),

                                                                    Container(
                                                                      margin: EdgeInsets.only(top: 10.0,left: 0.0),
                                                                      child: Text(
                                                                        "19/01/2020",
                                                                        style: TextStyle(
                                                                          fontSize: 15.0,
                                                                          color: Colors.black,
                                                                          /*fontWeight: FontWeight.bold,*/
                                                                        ),
                                                                      ),



                                                                    ),

                                                                    Container(
                                                                      margin: EdgeInsets.only(top: 10.0,left: 25.0),
                                                                      child: Icon(
                                                                        Icons.access_time_outlined,
                                                                        size: 20.0,
                                                                        color: Colors.black,
                                                                      ),

                                                                    ),

                                                                    Container(
                                                                      margin: EdgeInsets.only(top: 10.0,left: 0.0),
                                                                      child: Text(
                                                                        "9:00 - 17:00",
                                                                        style: TextStyle(
                                                                          fontSize: 15.0,
                                                                          color: Colors.black,
                                                                          /*fontWeight: FontWeight.bold,*/
                                                                        ),
                                                                      ),



                                                                    )
                                                                  ]
                                                              ),


                                                              Row(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: <Widget>[
                                                                    Container(
                                                                      margin: EdgeInsets.only(top: 10.0,left: 5.0),
                                                                      child: Icon(
                                                                        Icons.location_on_outlined,
                                                                        size: 20.0,
                                                                        color: Colors.black,
                                                                      ),

                                                                    ),

                                                                    Container(
                                                                      margin: EdgeInsets.only(top: 10.0,left: 0.0),
                                                                      child: Text(
                                                                        "Jumbo Supermarket",
                                                                        style: TextStyle(
                                                                          fontSize: 15.0,
                                                                          color: Colors.black,
                                                                          /*fontWeight: FontWeight.bold,*/
                                                                        ),
                                                                      ),



                                                                    ),



                                                                  ]
                                                              ),
                                                            ]
                                                        ),
                                                      )
                                                  )
                                              )
                                            ]
                                        ),


                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(top:5.0,left:10.0),
                                          child: Text(
                                            "Grocery Donation",

                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontFamily: "risotto",
                                            ),

                                          ),
                                        ),

                                        Container(
                                          margin: EdgeInsets.only(top:3.0,left:10.0,right: 10.0),
                                          child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur "
                                                "adipiscing elit. Morbi varius lectus et ante "
                                                "sollicitudin mattis. Morbi maximus maximus"
                                                " mi, non porttitor quam cursus sit amet. "
                                                "Vivamus in nunc id massa pretium "
                                                "elementum sed eu risus. Cras in ante ac "
                                                "nunc pretium imperdiet at a nisi. Cras "
                                                "placerat quis turpis a porttitor.",
                                            style: TextStyle(
                                              fontSize: 16.0,

                                              color: Colors.black54,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),

                                        Container(
                                            child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[

                                                  Container(
                                                    margin: EdgeInsets.only(top: 10.0,left: 10.0),
                                                    /*color: Colors.lightGreen,*/
                                                    /*width: MediaQuery.of(context).size.width,*/
                                                    height: 40.0,
                                                    width: 80.0,
                                                    child: Card(
                                                      color: Colors.black,
                                                      margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                                                      elevation: 5.0,
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(0.0),
                                                        child: Row(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            /*Text(
                              "About",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue,
                              ),
                            ),*/

                                                            SizedBox(
                                                              height: 20.0,
                                                              width:5.0,
                                                            ),

                                                            InkWell(
                                                              child: Icon(
                                                                Icons.online_prediction_outlined,
                                                                size: 19.0,
                                                                color: Colors.white,
                                                              ),
                                                              onTap: () {},
                                                            ),

                                                            SizedBox(
                                                              width: 5.0,
                                                              height: 20.0,
                                                            ),

                                                            Text(
                                                              "Status",
                                                              style: TextStyle(
                                                                fontSize: 15.0,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),




                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                          margin: EdgeInsets.only(top: 10.0,left: 10.0),
                                                          /*color: Colors.lightGreen,*/
                                                          /*width: MediaQuery.of(context).size.width,*/
                                                          height: 40.0,
                                                          width: 110.0,
                                                          child: Card(
                                                            // color: Colors.amber,
                                                            margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                                                            elevation: 10.0,
                                                            color: Colors.blue[50],
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(5.0),
                                                              side: BorderSide(color:Colors.blueAccent[700]),
                                                            ),
                                                            child: Padding(
                                                              padding: const EdgeInsets.all(0.0),
                                                              child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: <Widget>[
                                                                  /*Text(
                              "About",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue,
                              ),
                            ),*/


                                                                  SizedBox(
                                                                    width: 20.0,
                                                                    height: 20.0,
                                                                  ),

                                                                  Text(
                                                                    "Confirmed",
                                                                    style: TextStyle(
                                                                      fontSize: 15.0,
                                                                      color: Colors.blueAccent[700],
                                                                      fontWeight: FontWeight.bold,
                                                                    ),
                                                                  ),




                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ]
                                                  ),



                                                ]
                                            )

                                        ),

                                        Container(
                                            child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[

                                                  Container(
                                                    margin: EdgeInsets.only(top: 10.0,left: 10.0),


                                                    child: RaisedButton.icon(
                                                      icon: Icon(Icons.visibility_outlined,color: Colors.white,size: 20.0,),

                                                      label: Text("View Details",style: TextStyle(color: Colors.white, fontSize: 18.0),),

                                                      onPressed: () {
                                                        Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) {

                                                                  return BusinessConfirmed();

                                                                },
                                                              ),
                                                            );
                                                      },

                                                      color:Colors.blueAccent[700],
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.0),
                                                        /*side: BorderSide(color:Colors.amber,width: 2.0),*/
                                                      ),
                                                    ),
                                                  ),

                                                  Container(
                                                    margin: EdgeInsets.only(top: 10.0,left: 10.0),

                                                    child: RaisedButton.icon(
                                                      icon: Icon(Icons.phone_forwarded_outlined,color: Colors.white,size: 18.0,),
                                                      label: Text("Call",style: TextStyle(color: Colors.white, fontSize: 18.0),),

                                                      onPressed: () {
                                                        /*Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) {

                                                                  return SecondMainScreen();

                                                                },
                                                              ),
                                                            );*/
                                                      },

                                                      color:Colors.amber,

                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10.0),
                                                        /*side: BorderSide(color:Colors.amber,width: 2.0),*/
                                                      ),
                                                    ),
                                                  )



                                                ]
                                            )
                                        )


                                      ]
                                  )




                                /*child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur "
                                            "adipiscing elit. Morbi varius lectus et ante "
                                            "sollicitudin mattis. Morbi maximus maximus"
                                            " mi, non porttitor quam cursus sit amet. "
                                            "Vivamus in nunc id massa pretium "
                                            "elementum sed eu risus. Cras in ante ac "
                                            "nunc pretium imperdiet at a nisi. Cras "
                                            "placerat quis turpis a porttitor.",
                                        style: TextStyle(
                                          fontSize: 16.0,

                                          color: Colors.black54,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),*/

                              )

                          ),
                        ),
                      ),



                    ],
                              ),
                            )
                          ]
                      ),

    ]
            )
          ]

                )

    );


          }

          openurl(){
            String url1="WWW.jumbo.mu";
            launch(url1);
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

        class GetClipper extends CustomClipper<Path> {
          @override
          Path getClip(Size size) {
            var path = Path();
            path.lineTo(0.0, size.height / 2.2);
            path.lineTo(size.width + 125.0, 0.0);
            path.close();
            return path;
          }

          @override
          bool shouldReclip(CustomClipper<Path> oldClipper) {
            return true;
          }


        }
