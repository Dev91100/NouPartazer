
import 'package:flutter/material.dart';

import 'background.dart';

/*import '../Business.dart';*/

class Body extends StatelessWidget {

  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top:35.0),
              child: Text(
                "DONATIONS",
                style: TextStyle(
                  
                  fontSize: 22.0,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),



            /* SwitchListTile(

                        /* Icon(Icons.notifications_none_outlined),*/
                             activeColor: Color.fromRGBO(41, 90, 245, 1),
                            contentPadding: const EdgeInsets.all(0),
                            title: Text('Notifications'),
                            subtitle: Text('Receive notifications from the app'),

                            /*switchValue: value,*/
                            value: true,
                            onChanged: (val) {},
                      ),*/

            SizedBox(
              height: 25.0,
            ),

            ListTile(
              /*leading: Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.black87,
                          size: 30.0,
                        ),*/
                leading: Image(
                  image: AssetImage('assets/PNG/jumbo profile.png'),
                  height: 200.0,
                ),
                title: Text("Grocery donation" ,
                  style: TextStyle(
                    
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                subtitle:
                Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        color: Colors.blue,
                      ),

                      Text('19/01/2021',
                        style: TextStyle(
                          
                          /*fontSize: 13.0,*/
                        ),

                      ),

                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.blue,
                      ),

                      Text('Jumbo Supermarket',
                        style: TextStyle(
                          
                          /*fontSize: 13.0,*/
                        ),

                      ),

                    ]
                ),
                /*Text('First food project in Mauritius',
                          style: TextStyle(
                            
                            fontSize: 13.0,
                          ),

                        ),*/

                trailing:
                Row(
                    children: <Widget>[
                      Icon(
                        Icons.no_food_outlined,
                        color: Colors.greenAccent,
                      ),

                      Icon(
                        Icons.fastfood_outlined,
                        color: Colors.red,
                      ),
                    ]
                ),

                onTap: () {
                  /*Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {

                              },
                            ),
                          );*/
                }

            ),




          ],
        ),
      ),
    );
  }
}





