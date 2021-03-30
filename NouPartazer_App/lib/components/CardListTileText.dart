import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';

class CardListTileText extends StatelessWidget
{
  final String title;
  final String subtitle;
  final double titleFontSize;
  final double subtitleFontSize;
  final FontWeight titleFontWeight;
  final FontWeight subtitleFontWeight;
  final double textTop;
  final Color textColor;
  final BoxConstraints constraints;
  final double height; 
  final Color cardColor;
  final EdgeInsets margin;
  
  final IconData icon;
  final double iconSize;
  final Color iconColor;

  CardListTileText
  (
    {
      @required this.constraints,
      this.title = 'Test',
      this.subtitle,
      this.titleFontSize,
      this.subtitleFontSize,
      this.titleFontWeight = FontWeight.bold,
      this.subtitleFontWeight = FontWeight.normal,
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
      // height: height,
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
                child: Icon
                (
                  icon,
                  size: (iconSize != null) ? iconSize : Global().mediumIcon,
                  color: iconColor,
                ),
              ),

              ListTile
              (
                visualDensity: VisualDensity
                (
                  vertical: -1
                ),
                dense: true,
                isThreeLine: false,
                contentPadding: EdgeInsets.only(top: textTop),
                title: Text
                (
                  title,
                  style: TextStyle
                  (
                    fontSize: (titleFontSize != null) ? titleFontSize : Global().mediumText,
                    fontWeight:titleFontWeight,
                    color: textColor,
                  )
                ),
                subtitle: (subtitle != null) ? Text
                (
                  subtitle,
                  style: TextStyle
                  (
                    fontSize: (subtitleFontSize != null) ? subtitleFontSize : Global().normalText,
                    fontWeight: subtitleFontWeight,
                    color: textColor,
                  )
                ) : Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}