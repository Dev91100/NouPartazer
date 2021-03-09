import 'package:flutter/material.dart';

class TheOutlinedButtons extends StatelessWidget {

final double rightConstr;
final double bottomConstr;
final double leftConstr;
final String message;

TheOutlinedButtons
(
  {   
  this.rightConstr = 0.062,
  this.bottomConstr = 0.03,
  this.leftConstr = 0.062,
  this.message,
  }
);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context);
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Container
        (     
          width: double.infinity,  
          margin: EdgeInsets.only
          (
            left: constraints.maxWidth * leftConstr,
            right: constraints.maxWidth * rightConstr,
            bottom: screen.size.height * bottomConstr,
            // top: screen.size.height * 0.01,
          ),
          // padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom
            (
              primary: Colors.amber[100],
              backgroundColor: Colors.amber[50],
              shape: const RoundedRectangleBorder
              (
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              side: BorderSide(color: Colors.amber[500], width: 2),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric
              (
                vertical: screen.size.height * 0.01,
              ),
              child: Text
              (
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.amber[500],
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}