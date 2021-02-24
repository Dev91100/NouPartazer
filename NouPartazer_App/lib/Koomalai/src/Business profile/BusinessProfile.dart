
import 'package:NouPartazer_App/Koomalai/src/BusinessSettings/Setting.dart';
import 'package:NouPartazer_App/Koomalai/src/Help%20and%20support/helpAndSupport.dart';
import 'package:NouPartazer_App/Koomalai/src/Security/Security.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/Setting.dart';
import 'package:NouPartazer_App/Koomalai/src/pages/profilePage.dart';
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

    class BusinessProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(

            padding: const EdgeInsets.all(0.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
             Positioned(
            width: MediaQuery.of(context).size.width,
        top: MediaQuery.of(context).size.height / 6.0,

            // left: 76.0,
            child: Column(
            children: <Widget>[
              Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 0.0,top: 20.0),
                      width: 360.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/JPEG/jumbo.jpg"),
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
                          ),

                          Container(
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
                          ),



                          SizedBox(
                            height: 18.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 25.0,
                              ),

                              Text(
                                "AT A GLANCE",
                                style: TextStyle(
                                  fontFamily: "risotto",
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              InkWell(
                                child: Icon(
                                  Icons.info_outline,
                                  size: 22.0,
                                  color: Colors.black54,
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,

                          ),


                          FoodCategoryStories(),


                          SizedBox(
                            height: 0.0,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 25.0,
                              ),


                              Text(
                                "Jumbo Supermarket",

                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent[700],
                                ),

                              ),

                              SizedBox(
                                width: 70.0,
                              ),
                              InkWell(
                                child: Icon(
                                  Icons.create_outlined,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                                onTap: () {},
                              ),


                            ],
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
                                "Best supermarket chain",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                ),
                              ),
                              /*SizedBox(
                  width: 10.0,
                ),
                InkWell(
                  child: Icon(
                    Icons.create,
                    size: 18.0,
                    color: Colors.blue,
                  ),
                  onTap: () {},
                ),*/

                            ],
                          ),


                          /*added*/

                          SizedBox(
                            height: 10.0,
                          ),

                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(left:25.0,right:30.0),

                            child: Text(
                              "Jumbo is the supermarket chain that has democratized mass distribution, becoming the preferred supermarket for Mauritian households. A subsidiary of the IBL group, Jumbo supermarkets have been present on the island since 1994, and are the first to have opened a supermarket in a rural area.",
                              style: TextStyle(
                                fontSize: 16.0,

                                color: Colors.black54,
                              ),
                              textAlign: TextAlign.justify,
                            ),

                          ),
                          //added end


                          SizedBox(
                            width: 25.0,
                            height:40.0,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 25.0,
                              ),


                              Text(
                                "CONTACT INFO ",

                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: "risotto",
                                ),

                              ),

                              SizedBox(
                                width: 150.0,
                              ),
                              InkWell(
                                child: Icon(
                                  Icons.create_outlined,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                                onTap: () {},
                              ),


                            ],
                          ),

                          SizedBox(
                            width: 25.0,
                            height:20,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[

                                SizedBox(
                                  width: 25.0,
                                ),
                                Icon(
                                    Icons.language_outlined
                                ),


                                SizedBox(
                                  width: 10.0,
                                ),

                                InkWell(
                                  child: Text(
                                    "WWW.jumbo.mu",

                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.blueAccent[700],
                                      fontFamily: "risotto",
                                      decoration: TextDecoration.underline,
                                    ),

                                  ),
                                  onTap: () {openurl();},
                                ),
                              ]
                          ),

                          SizedBox(
                            width: 25.0,
                            height:20,
                          ),

                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[

                                SizedBox(
                                  width: 25.0,
                                ),

                                Icon(
                                  Icons.mail_outline,
                                ),

                                SizedBox(
                                  width: 10.0,
                                ),


                                InkWell(
                                  child: Text(
                                    "jumbo@gmail.com",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.blueAccent[700],
                                      fontFamily: "risotto",
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                              ]
                          ),

                          SizedBox(
                            width: 25.0,
                            height:20,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 25.0,
                                ),

                                Icon(
                                  Icons.phone,

                                ),

                                SizedBox(
                                  width: 10.0,
                                ),


                                InkWell(
                                  child: Text(
                                    "+230 5758 0236",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.blueAccent[700],
                                      fontFamily: "risotto",
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),

                                ),
                              ]
                          ),

                          /*Divider(
                  height: 30.0,
                  color: Colors.black,
                ),
                Container(
                  width: 350.0,
                  height: 60.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "45",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            "Follower",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: 70.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "20",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        width: 70.0,
                        color: Colors.black,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "30",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            "Post",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.black,
                ),*/
                          SizedBox(
                            height: 30.0,
                          ),



                        ],
                      ),
                    )
                  ]
              ),
            ]
        )
    ),



    ]
    )


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
