import 'package:NouPartazer_App/Koomalai/src/screens/secondMainScreen.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      // Here i can use size.width but use double.infinity because both work as a same
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          /*Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.25,
            ),
          ),*/
          Container(
            margin: EdgeInsets.only(top: 0,bottom: 389.0),
            child: Image(
              image: AssetImage('assets/JPEG/image.jpg'),
              height: size.height * 1.0,

            ),

          ),

          /*Container(
            margin: EdgeInsets.only(top: 50.0,right: 20.0),
            alignment: Alignment.topRight,

            child: RaisedButton(
              child: Text("Skip",style: TextStyle(color: Colors.white, fontSize: 20.0),),

              onPressed: () {
                return SecondMainScreen();
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {

                      return SecondMainScreen();

                    },
                  ),
                );*/
              },
              color:Colors.black26,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),*/




          child,
        ],
      ),
    );
  }
}
