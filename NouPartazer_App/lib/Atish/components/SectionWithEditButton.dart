import 'package:flutter/material.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

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

    final bool isEditable;
    final EdgeInsets margin;

    SectionWithEditButton
    (
      {
        this.title,
        this.fontSize,
        this.onPress,
        this.isPopUpPage = false,
        this.isModalPage = false,
        this.isPage = false,
        this.icon = Icons.create_outlined,
        this.color = const Color.fromRGBO(0, 0, 0, 1),
        this.isEditable = false,
        this.margin,
      }
    )
    {
      SectionTitle
      (
        text: title,
        fontSize: (fontSize != null) ? fontSize : Global().mediumText,
        color: color,
      );
      
      RoundIconButton
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
        return Container(
          child: Row
          (
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
            Container
              (
                
                child: Expanded
                (
                  child: Row
                  (
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Expanded
                      (
                        child: SectionTitle
                        (
                          text: title,
                          fontSize: (fontSize != null) ? fontSize : Global().mediumText,
                          color: color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            
              (isEditable) ? RoundIconButton
              (
                onPress: onPress,
                isPopUpPage: isPopUpPage,
                isModalPage: isModalPage,
                isPage: isPage,
                icon: icon,
                height: 40,
                width: 40,
                margin: EdgeInsets.only(left: 10),
              ) : Container(),
            ],
          ),
        );
      }   
    );
  }
}