import 'package:flutter/material.dart';

import './SectionTitle.dart';
import './EditIconButton.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/Setting.dart';

class SectionWithEditButton extends StatelessWidget 
{
    @required
    final String title;
    
    @required
    final Widget openPage;

    final double fontSize;
    final int R, G, B;
    final double O;
    final IconData icon;

    SectionWithEditButton
    (
      {
        this.title,
        this.fontSize = 22,
        this.openPage,
        this.icon = Icons.create_outlined,
        this.R = 0,
        this.G = 0,
        this.B = 0,
        this.O = 1,
      }
    )
    {
      SectionTitle
      (
        title: title,
        fontSize: fontSize,
        R: R,
        G: G,
        B: B,
        O: O,
      );
      
      EditIconButton
      (
        openPage: openPage,
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
                R: R, G: G, B: B, O: O,
              ),
            ),
            
            EditIconButton
            (
              openPage: openPage,
              isModalPage: false,
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