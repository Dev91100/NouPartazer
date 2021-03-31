import 'package:flutter/material.dart';

import 'package:noupartazer_app/Pages/UserAccess/components/OrgButton.dart';
import 'package:noupartazer_app/components/Text/HugeText.dart';
import 'package:noupartazer_app/components/Text/MediumText.dart';
import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/Pages/RegistrationPage/BusinessRegistration.dart';
import 'package:noupartazer_app/Pages/RegistrationPage/NGORegistration.dart';

class SignUpWidget extends StatelessWidget
{
  final BoxConstraints constraints;

  SignUpWidget
  (
    this.constraints,
  );

  @override
  Widget build(BuildContext context)
  {
    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
      [
        Container
        (
          alignment: Alignment.bottomLeft,
          child: FittedBox
          (
            fit: BoxFit.contain,
            child: HugeText(text:"Let's get started,")
          ),
        ),

        Container
        (
          margin: EdgeInsets.only
          (
            top: Global().tinyPageMargin
          ),
          alignment: Alignment.bottomLeft,
          child: MediumText
          (
            text: "Choose your organisation type",
            textColor: Colors.white,
          ),
        ),
        
        Container
        (
          margin: EdgeInsets.only(top: Global().tinySpacing),
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              OrgButton
              (
                constraints: constraints,
                title: 'NGO',
                icon: Icons.favorite,
                onPress: NGORegistration(),
                transitionType: 'rightToLeft',
                transitionDuration: 1100,                  
              ),

              OrgButton
              (
                constraints: constraints,
                title: 'BUSINESS',
                icon: Icons.business,
                onPress: BusinessRegistration(),
                transitionType: 'rightToLeft',
                transitionDuration: 1100,
              ),
            ],
          ),
        )
      ],
    );
  }
}