
import 'package:NouPartazer_App/Koomalai/src/screens/NGOTaskmainScreen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

  class BusinessTaskNGOProfile extends StatelessWidget {

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
                                              image: AssetImage("assets/JPEG/Rectangle 13.jpg"),
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
                                                      image: AssetImage("assets/JPEG/Rectangle 13.jpg"),
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
                                                    top: 50.0,
                                                    left: 20.0,
                                                    child: InkWell(
                                                      child: Icon(
                                                        Icons.arrow_back_ios,
                                                        color: Colors.black54,
                                                        size: 28.0,
                                                      ),
                                                      onTap: () {

                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) {
                                                              return NGOTaskMainScreen();
                                                            },
                                                          ),
                                                        );

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
                                                        image: AssetImage("assets/JPEG/Rectangle 12.jpg"),
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
                                                height: 10.0,
                                              ),

                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  SizedBox(
                                                    width: 25.0,
                                                  ),


                                                  Text(
                                                    "Manzer Partazer ",

                                                    style: TextStyle(
                                                      fontSize: 25.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blueAccent[700],
                                                    ),

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
                                                    "Food sharing project of Mauritius",
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
                                                  "MANZER PARTAZER is the the first food sharing project of Mauritius. Our aim is to reduce the wastage of high quality ready to eat food by simply sharing it!"
                                                      "We ‘save’ food which would otherwise go to waste, such as buffet leftovers in hotels or restaurants, donating it to people in need through a very simple and no-cost food sharing system.",
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
                                                        "manzerpartazer.org",

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
                                                        "info@manzerpartazer.org",
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
                                                        "+230 5820 7691",
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
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: <Widget>[
                                                  SizedBox(
                                                    width: 25.0,
                                                  ),

                                                  Text(
                                                    "MEMBERS",
                                                    style: TextStyle(
                                                      fontFamily: "risotto",
                                                      fontSize: 22.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),


                                                ],
                                              ),
                                              SizedBox(
                                                height: 1.0,
                                              ),

                                              Container(
                                                /*color: Colors.lightGreen,*/
                                                /*width: MediaQuery.of(context).size.width,*/
                                                height: 100.0,
                                                width: 400,
                                                child: Card(
                                                  // color: Colors.amber,
                                                  margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
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
                                                        Container(
                                                          margin: EdgeInsets.only(bottom: 0.0,top: 5.0,left:8.0),
                                                          width: 70.0,
                                                          height: 70.0,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: AssetImage("assets/JPEG/Photo.jpg"),
                                                              fit: BoxFit.cover,
                                                            ),
                                                            borderRadius: BorderRadius.circular(80.0),


                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 20.0,
                                                          width:20.0,
                                                        ),
                                                        Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: <Widget>[
                                                              Text(
                                                                "Julia Venn",
                                                                style: TextStyle(
                                                                  fontSize: 18.0,
                                                                  color: Colors.blueAccent[700],
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),

                                                              Text(
                                                                "Co-founder and",
                                                                style: TextStyle(
                                                                  fontSize: 15.0,
                                                                  color: Colors.blueAccent[700],
                                                                ),
                                                              ),


                                                              Text(
                                                                "Magadascar Coordinator",
                                                                style: TextStyle(
                                                                  fontSize: 15.0,
                                                                  color: Colors.blueAccent[700],
                                                                ),
                                                              ),

                                                            ]
                                                        ),




                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              SizedBox(
                                                height: 30.0,
                                                width:20.0,
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
    String url1="https://manzerpartazer.org/";
    launch(url1);
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
