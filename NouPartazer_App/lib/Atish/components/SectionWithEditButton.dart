import 'package:flutter/material.dart';

import './SectionTitle.dart';
import 'Buttons/RoundIconButton.dart';

class SectionWithEditButton extends StatelessWidget 
{
    @required
    final String title;
    
    @required
    final Widget onPress;
    final bool isPopUpPage;
    final bool isModalPage;
    final bool isPage;

    final double fontSize;
    final Color color;
    final IconData icon;

    SectionWithEditButton
    (
      {
        this.title,
        this.fontSize = 22,
        this.onPress,
        this.isPopUpPage = false,
        this.isModalPage = false,
        this.isPage = false,
        this.icon = Icons.create_outlined,
        this.color = const Color.fromRGBO(0, 0, 0, 1),
      }
    )
    {
      SectionTitle
      (
        title: title,
        fontSize: fontSize,
        color: color,
      );
      
      EditIconButton
      (
        onPress: onPress,
        isPopUpPage: isPopUpPage,
        isModalPage: isModalPage,
        isPage: isPage,
      );
    }

  @override
  Widget build(BuildContext context) 
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Row
        (
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Container
            (
              width: constraints.maxWidth * 0.7,
              child: SectionTitle
              (
                title: title,
                fontSize: fontSize,
                color: color,
              ),
            ),
            
            EditIconButton
            (
              onPress: onPress,
              isPopUpPage: isPopUpPage,
              isModalPage: isModalPage,
              isPage: isPage,
              icon: icon,
              height: 40,
              width: 40,
              left: 10,
              top: 0,
              right: 20,
              bottom: 10,
              size: 26,
            ),
          ],
        );
      }   
    );
  }
}