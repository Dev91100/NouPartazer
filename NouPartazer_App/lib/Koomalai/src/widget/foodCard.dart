import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget
{

  final String categoryName;
  final String imagePath;
  final int noOfItem;

  FoodCard({this.categoryName,this.imagePath,this.noOfItem});

  @override
  Widget build(BuildContext context) {

    return Container(

            margin: EdgeInsets.only(right: 25.0,bottom: 100.0),
            padding: EdgeInsets.all(0.0),

      /*child: Card(
        child: Container(
          height: 350.0,
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
          /*child:FittedBox(*/*/

          child: Stack(
            children: <Widget>[
             /* Image(
                image: AssetImage(imagePath),

                height:1000000.0,
                width: 320.0,
                fit: BoxFit.contain,
              ),*/
              Container(
                height: 50000.0,
                width: 320.0,
                child: Image.asset(imagePath,fit: BoxFit.contain,),

              ),

                    SizedBox(width: 0.0,height: 10000.0,),

              /*Container(
                /*mainAxisAlignment: MainAxisAlignment.end,*/
                /*children: <Widget>[*/

                  alignment: Alignment.bottomCenter,
                   child: Text(categoryName,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                   /*Text("$noOfItem Kinds"),*/
                   )*/

               /* ],*/
             /* ),*/
             /* Positioned(
                left: 0.0,
                bottom: 0.0,
                child:Container(
                /*margin: EdgeInsets.only(bottom: 20.0),*/
                alignment: Alignment.bottomCenter,
                  child: Text(categoryName,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                  /*child: Text("$noOfItem Kinds")*/
                )
              )*/

            /*],*/
                Positioned(
                left: 0.0,
                bottom: 0.0,
                child: Container(
                height: 60.0,
                width: 340.0,
                decoration: BoxDecoration(
                gradient: LinearGradient(
                colors: [
                Colors.black,
                Colors.black12,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                )
                ),
                ),
                ),
                Positioned(
                left: 10.0,
                bottom: 10.0,
                right: 10.0,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Text(categoryName,

                style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,

                ),
                ),
                  Text("$noOfItem Kinds"),

                      /*),*/
            ]
          )
    ]
    )
    )
    ]
          )
    );
        /*),
      );
    )*/
  }

}