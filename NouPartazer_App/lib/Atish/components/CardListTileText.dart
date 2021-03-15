import 'package:flutter/material.dart';

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
  final EdgeInsets padding;
  
  final IconData icon;
  final double iconSize;
  final Color iconColor;

  CardListTileText
  (
    {
      @required this.constraints,
      this.title = 'Test',
      this.subtitle,
      this.titleFontSize = 20,
      this.subtitleFontSize = 18,
      this.titleFontWeight = FontWeight.bold,
      this.subtitleFontWeight = FontWeight.normal,
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
        child: Expanded
        (
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
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(bottom: 15),
                  child: Icon
                  (
                    icon,
                    size: iconSize,
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
                      fontSize: titleFontSize,
                      fontWeight:titleFontWeight,
                      color: textColor,
                    )
                  ),
                  subtitle: (subtitle != null) ? Text
                  (
                    subtitle,
                    style: TextStyle
                    (
                      fontSize: subtitleFontSize,
                      fontWeight: subtitleFontWeight,
                      color: textColor,
                    )
                  ) : Container(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}