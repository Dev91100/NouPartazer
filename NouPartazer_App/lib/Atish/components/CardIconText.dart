import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Atish/components/Text/SmallText.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

class CardIconText extends StatelessWidget
{
  final String text;
  final double fontSize;
  final double textTop;
  final Color textColor;
  final BoxConstraints constraints;
  final double height; 
  final Color cardColor;
  final EdgeInsets margin;
  
  final IconData icon;
  final double iconSize;
  final Color iconColor;

  CardIconText
  (
    {
      @required this.constraints,
      this.text = 'Test',
      this.fontSize,
      this.textTop = 0,
      this.textColor = const Color.fromRGBO(0, 0, 0, 1),
      this.icon = Icons.help_outline,
      this.iconSize,
      this.iconColor = const Color.fromRGBO(0, 0, 0, 1),
      this.height = 140,
      this.cardColor = const Color.fromRGBO(248, 248, 248, 1),
      this.margin,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      width: constraints.maxWidth * 0.43,
      child: Card
      (
        color: cardColor,
        elevation: 2,
        child: Container
        (
          margin: (margin != null) ? margin :EdgeInsets.all(Global().smallSpacing),
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Container
              (
                margin: EdgeInsets.only(bottom: Global().smallSpacing),
                child: Icon
                (
                  icon,
                  size: (iconSize != null) ? iconSize : Global().smallIcon,
                  color: iconColor,
                ),
              ),
              SmallText
              (
                text: text,
                fontWeight: FontWeight.w500,
                textColor: textColor,
                fontSize: (fontSize != null) ? fontSize : Global().smallText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}