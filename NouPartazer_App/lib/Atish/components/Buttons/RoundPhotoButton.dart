import 'package:flutter/material.dart';
import 'package:noupartazer_app/Global.dart';

class EditPhotoButton extends StatelessWidget
{
  final double elevation;
  final Widget onPress;
  final double L, T, R, B;
  final double height;
  final double width;
  final Color iconColor;
  final IconData icon;
  final bool isPopUpPage;
  final bool isModalPage;
  final bool isPage;
  final bool scrollModalSheet;
  final bool hasSuperPress;
  final VoidCallback onSuperPress;

  EditPhotoButton
  (
    {
      this.onPress,
      this.elevation = 2,
      this.L = 0.05,
      this.T = 0.05,
      this.R = 0.07,
      this.B = 0.05,
      this.height = 35,
      this.width = 35,
      this.icon = Icons.create_outlined,
      this.iconColor = Colors.black,
      this.isPopUpPage = false,
      this.isModalPage = false,
      this.isPage = false,
      this.scrollModalSheet = true,
      this.hasSuperPress = false,
      this.onSuperPress,
    }
  );

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
        builder: (ctx, constraints)
        {
          return Container
          (
            margin: EdgeInsets.fromLTRB
            (
              constraints.maxHeight * L,
              constraints.maxHeight * T,
              constraints.maxHeight * R,
              constraints.maxHeight * B,
            ),
            height: height,
            width: width,
            constraints: BoxConstraints
            (
              minWidth: width,
              minHeight: height,
            ),
            decoration: BoxDecoration
            (
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow:
              [
                BoxShadow
                (
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),

            child: ElevatedButton
            (
              style: ElevatedButton.styleFrom
              (
                elevation: elevation,
                padding: EdgeInsets.all(0),
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder
                (
                  borderRadius: BorderRadius.circular(50),
                ),
              ),

              onPressed: (!hasSuperPress) ? () 
              {
                if(isPopUpPage)
                {
                  showDialog
                  (
                    context: context,
                    builder: (BuildContext context)
                    {
                      return onPress;
                    }
                  );
                }
                else if (isModalPage)
                {
                  showModalBottomSheet
                  (
                    isScrollControlled: scrollModalSheet,
                    shape: RoundedRectangleBorder
                    (
                      borderRadius: BorderRadius.only
                      (
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )
                    ),
                    context: context,
                    builder: ((builder) => onPress)
                  );
                }
                else if(isPage)
                {
                  Navigator.push
                  (
                    context,
                    MaterialPageRoute
                    (
                      builder: (context)
                      {
                        return onPress;
                      },
                    ),
                  );
                }
              } : () => onSuperPress(),
              child: Icon
              (
                icon,
                color: iconColor,
                size: Global().smallIcon,
              ),
            ),
          );
      }
    );
  }
}