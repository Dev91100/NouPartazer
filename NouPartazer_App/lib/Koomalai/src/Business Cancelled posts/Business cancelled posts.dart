
import 'dart:async';

import 'package:NouPartazer_App/Koomalai/src/screens/TaskMainScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

    class BusinessCancelled extends StatelessWidget {
      Completer<GoogleMapController> _controller=Completer();
      /*GoogleMapController mapController;

      final LatLng _center = const LatLng(-20.279467,57.495773);

      void _onMapCreated(GoogleMapController controller) {
        mapController = controller;
      }*/
  @override
  Widget build(BuildContext context) {

    /*final CameraPosition _initPosition=CameraPosition(
      target: LatLng(24.903623,67.198367),
      /*zoom: 14.5,*/
    );*/
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 250.0,
          backgroundColor: Colors.white,
          /*title: Text(
            "Ordered Items List",
            style: TextStyle(color: Colors.black, fontSize: 23.0),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,*/
          actions: [
        Positioned(
        width: MediaQuery.of(context).size.width,
      top: MediaQuery.of(context).size.height / 6.0,

      // left: 76.0,
      child: Column(
          children: <Widget>[
        Stack(
          children: <Widget>[

          Column(
        children: <Widget>[
            Stack(
          children: <Widget>[
              Container(
              margin: EdgeInsets.only(bottom: 0.0,top: 0.0),
              width: 360.0,
              height: 250.0,
              decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage("assets/JPEG/Blur.jpg"),
              fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(0.0),
              /*boxShadow: [
                              BoxShadow(
                                blurRadius: 5.0,
                                color: Colors.black,
                                offset: Offset(5.0, 6.0),
                              ),

                            ],*/
          ),
          ),

            SizedBox(
              height: 20.0,

            ),
              Row(
            children: <Widget>[
                SizedBox(
                width: 10.0,
                height: 25.0,
              ),
               Positioned(
                top: 20.0,
                right: 30.0,
                child: InkWell(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 28.0,
                    ),
                    onTap: () {

                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) {
                    return TaskMainScreen();
                    },
                    ),
                    );

                    },

                    ),



              ),


                SizedBox(
                  width: 80.0,
                  height: 25.0,
                ),
                Container(
                  /*margin: EdgeInsets.only(top: 20.0,left: 120.0),*/
                  alignment: Alignment.center,
                  child: Text(
                  "EVENT DETAILS",
                  style: TextStyle(
                  fontFamily: "risotto",
                  fontSize: 20.0,
                  /* fontWeight: FontWeight.bold,*/
                  ),
                  ),
                  )

    ]
        ),

              Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 0.0,top: 30.0,left: 150.0),
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/PNG/jumbo logo.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(80.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Colors.black45,
                        offset: Offset(3.0, 4.0),

                      ),

                    ],
                  ),
                ),
              ],
            ),

              SizedBox(
              width: 80.0,
              height: 30.0,
            ),

              Stack(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 110.0,left: 90.0),
                      alignment: Alignment.center,
                      child: Text(
                        "GROCERY DONATIONS",
                        style: TextStyle(
                          fontFamily: "risotto",
                          fontSize: 20.0,
                          /* fontWeight: FontWeight.bold,*/
                        ),
                      ),
                    )

              ],
            ),

              Container(
              margin: EdgeInsets.only(top: 140.0,left: 90.0),
              /*color: Colors.lightGreen,*/
              /*width: MediaQuery.of(context).size.width,*/
              height: 40.0,
              width: 80.0,
                child: Card(
                // color: Colors.amber,
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
                          color: Colors.black,
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
                          color: Colors.black,
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
              margin: EdgeInsets.only(top: 140.0,left: 180.0),
              /*color: Colors.lightGreen,*/
              /*width: MediaQuery.of(context).size.width,*/
              height: 40.0,
              width: 110.0,
              child: Card(
                // color: Colors.amber,
                margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                elevation: 10.0,
                color: Colors.transparent,
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

              Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 190.0,left: 100.0),
                  alignment: Alignment.center,
                   child: RaisedButton.icon(

                     icon: Icon(Icons.cancel_outlined,color: Colors.red,size: 30.0,),
                    label: Text("Cancel Task",style: TextStyle(color: Colors.red, fontSize: 20.0),),

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

                    color:Colors.transparent,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color:Colors.red,width: 2.0),
                    ),
                  ),
                )

              ],
            ),




          ]
    )
      ]
      )
          ]
      )
            ]
      )
    )
    ]
    ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[

        /*Stack(
      children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 0.0,top: 40.0),

              width: 360.0,
              height: 250.0,
              decoration: BoxDecoration(
                image: DecorationImage(

                  image: AssetImage("assets/JPEG/Blur.jpg"),
                  fit: BoxFit.cover,

                ),

                borderRadius: BorderRadius.circular(0.0),
                /*boxShadow: [
                         BoxShadow(
                           blurRadius: 5.0,
                           color: Colors.black,
                           offset: Offset(5.0, 6.0),
                         ),

                       ],*/
              ),
          ),
            ]
      ),*/
            /*CustomScrollView(
              slivers:<Widget> [
                SliverAppBar(
                  expandedHeight: 195.0,
                 pinned: true,
                 flexibleSpace: Container(
                   margin: EdgeInsets.only(bottom: 0.0,top: 20.0),

                   width: 360.0,
                   height: 210.0,
                   decoration: BoxDecoration(
                     image: DecorationImage(

                       image: AssetImage("assets/JPEG/Blur.jpg"),
                       fit: BoxFit.cover,

                     ),

                     borderRadius: BorderRadius.circular(0.0),
                     /*boxShadow: [
                       BoxShadow(
                         blurRadius: 5.0,
                         color: Colors.black,
                         offset: Offset(5.0, 6.0),
                       ),

                     ],*/
                   ),
                 ),

                ),


            SliverList(
              delegate:SliverChildListDelegate(
                <Widget>[*/
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
                      /*Stack(
                          children: <Widget>[

                            Container(
                              margin: EdgeInsets.only(bottom: 0.0,top: 200.0),

                              width: 360.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(

                                  image: AssetImage("assets/JPEG/jumbo.jpg"),
                                  fit: BoxFit.cover,
                              ),

                                borderRadius: BorderRadius.circular(0.0),
                                boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Colors.black,
                              offset: Offset(5.0, 6.0),
                            ),

                          ],
                              ),
                            ),

                            Positioned(
                              bottom: 20.0,
                              right: 20.0,
                              child: InkWell(
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 28.0,
                                ),
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: ((builder) => BottomShhetWidget()));
                                },
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(bottom: 0.0,top: 20.0),
                                      width: 360.0,
                                      height: 200.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/JPEG/jumbo.png"),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(0.0),
                                        /*boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Colors.black,
                              offset: Offset(5.0, 6.0),
                            ),

                          ],*/
                                      ),
                                    ),

                                    Positioned(
                                      bottom: 20.0,
                                      right: 20.0,
                                      child: InkWell(
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: Colors.white,
                                          size: 28.0,
                                        ),
                                        onTap: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: ((builder) => BottomShhetWidget()));
                                        },
                                      ),
                                    ),



                                  ],
                                ),


                              ],
                            ),


                            Positioned(
                              /*width: MediaQuery.of(context).size.width,
                    top: MediaQuery.of(context).size.height / 6.0,*/


                              // left: 76.0,
                              child: Column(
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(bottom: 0.0,top: 130.0),
                                        width: 135.0,
                                        height: 135.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("assets/PNG/jumbo logo.png"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(80.0),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 10.0,
                                              color: Colors.black45,
                                              offset: Offset(3.0, 4.0),

                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 20.0,
                                        right: 20.0,
                                        child: InkWell(
                                          child: Icon(
                                            Icons.camera_alt,
                                            color: Colors.white,
                                            size: 28.0,
                                          ),
                                          onTap: () {
                                            showModalBottomSheet(
                                                context: context,
                                                builder: ((builder) => BottomShhetWidget()));
                                          },
                                        ),
                                      ),




                                    ],
                                  ),*/

                                  /*Container(
                                    alignment: Alignment.centerRight,

                                    margin: EdgeInsets.only(top:0.0),
                                    child: IconButton(
                                      icon: Icon (Icons.settings_outlined),
                                      /*child: Text("Sign In",
                        style: TextStyle(color: Colors.black, fontFamily: 'risotto',fontSize: 20.0),
                      ),

                      shape: Border.all(color:Colors.white,width: 2.0),*/
                                      iconSize: 30.0,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return BusinessSettings();
                                            },
                                          ),
                                        );
                                      },

                                      /*color: Colors.white,*/
                                      /*minWidth: size.width * 0.5,
                      height: 50.0,*/


                                    ),
                                  ),*/



                                    SizedBox(
                                    height: 20.0,

                                  ),
                      Container(
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
                                  ),


                                  SizedBox(
                                    height: 5.0,
                                  ),




                                  SizedBox(
                                    width: 0.0,
                                  ),

                      Container(
                          margin: EdgeInsets.only(top: 5.0,left: 0.0),
                          /*color: Colors.lightGreen,*/
                          /*width: MediaQuery.of(context).size.width,*/
                          height: 250.0,
                          width: 300.0,
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

                                /*Text(
                            "About",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue,
                            ),
                          ),*/




                                    child: Container(
                                      margin: EdgeInsets.only(top: 18.0,left: 25.0,right: 25.0),

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

                                    )

                                    ),
                          ),
                      ),

                                  SizedBox(
                                    width: 25.0,
                                    height:15.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 25.0,
                                      ),


                                      Text(
                                        "LOCATION",

                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: "risotto",
                                        ),

                                      ),

                                    ],
                                  ),

                                  SizedBox(
                                    width: 0.0,

                                  ),

                      Container(
                        margin: EdgeInsets.only(top: 5.0,left: 0.0,right: 0.0),
                        /*color: Colors.lightGreen,*/
                        /*width: MediaQuery.of(context).size.width,*/
                        height: 150.0,
                        width: 300.0,
                        child: Card(
                          // color: Colors.amber,
                          margin: EdgeInsets.symmetric(horizontal: 1.0,vertical: 10.0),
                          elevation: 10.0,
                          color: Colors.amber,
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
                                          Icons.location_on_outlined,
                                          size: 30.0,
                                          color: Colors.black,
                                        ),

                                      ),

                                      Container(
                                        margin: EdgeInsets.only(top: 10.0,left: 25.0),
                                        child: Text(
                                          "JUMBO PHOENIX",
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),



                                      ),

                                      Container(
                                        margin: EdgeInsets.only(top: 5.0,left: 25.0),
                                        child: Text(
                                          "Hypermarket- Centre Commercial Phoenix,",
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                      ),

                                      Container(
                                        margin: EdgeInsets.only(top: 0.0,left: 25.0),
                                        child: Text(
                                          "S Sivananda Ave",
                                          style: TextStyle(
                                            fontSize: 13.0,
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

                                  SizedBox(
                                    height: 30.0,
                                  ),
                    /*Container(
                      height: 500.0,
                    child: GoogleMap(
                      initialCameraPosition: _initPosition,
                      mapType: MapType.normal,
                      onMapCreated: (GoogleMapController controller){

                        _controller.complete(controller);
                      }
                    ),
                    )*/

                      /*Container(
                        height: 500.0,
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 11.0,
                        ),
                      ),
                      )*/

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
