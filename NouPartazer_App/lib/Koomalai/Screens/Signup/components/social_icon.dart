import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocalIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1),
        padding: EdgeInsets.all(5),
        /*decoration: BoxDecoration(
          border: Border.all(
            /*width: 2,*/
            color: Color.fromRGBO(41, 90, 245, 1),
          ),
          /*shape: BoxShape.circle,*/
        ),*/
        child: SvgPicture.asset(
          iconSrc,
          height: 125,
          width: 120,
        ),
      ),
    );
  }
}