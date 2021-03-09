import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          /*Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/image.jpg",
              width: size.width * 1.0,
              /*"assets/images/main_top.png",*/
              /*width: size.width * 0.35,*/
            ),
          ),*/

        Container(
        margin: EdgeInsets.only(top: 0,bottom: 389.0),
          child: Image(
            image: AssetImage('assets/JPEG/image.jpg'),
            height: size.height * 1.0,

          ),

    ),

           Container(
            margin: EdgeInsets.only(top: 35.0,right: 20.0),
            alignment: Alignment.topRight,

            child: RaisedButton(
              child: Text("Skip",style: TextStyle(color: Colors.white, fontSize: 20.0),),

              onPressed: () {},
              color:Colors.black26,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),




         /* Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              /*"assets/images/login_bottom.png",*/
              "assets/images/blue.png",
              width: size.width * 2.0,

            ),


          ),*/
          child,
        ],
      ),
    );
  }
}
