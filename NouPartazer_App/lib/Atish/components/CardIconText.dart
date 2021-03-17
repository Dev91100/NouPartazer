import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/SectionTitle.dart';

class CardIconText extends StatelessWidget
{
  final String text;
  final double fontSize;
  final double textTop;
  final Color textColor;
  final BoxConstraints constraints;
  final double height; 
  final Color cardColor;
  final EdgeInsets padding;
  
  final IconData icon;
  final double iconSize;
  final Color iconColor;

  CardIconText
  (
    {
      @required this.constraints,
      this.text = 'Test',
      this.fontSize = 20,
      this.textTop = 0,
      this.textColor = const Color.fromRGBO(0, 0, 0, 1),
      this.icon = Icons.help_outline,
      this.iconSize = 40,
      this.iconColor = const Color.fromRGBO(0, 0, 0, 1),
      this.height = 140,
      this.cardColor = const Color.fromRGBO(248, 248, 248, 1),
      this.padding = const EdgeInsets.all(20),
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      // height: height,
      width: constraints.maxWidth * 0.43,
      child: Card
      (
        color: cardColor,
        elevation: 2,
        child: Container
        (
          margin: padding,
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Container
              (
                margin: EdgeInsets.only(bottom: 15),
                child: Icon
                (
                  icon,
                  size: iconSize,
                  color: iconColor,
                ),
              ),
              SectionTitle
              (
                title: text,
                color: textColor,
                fontSize: fontSize,
                left: 0,
                top: textTop,
              ),
            ],
          ),
        ),
      ),
    );
  }
}