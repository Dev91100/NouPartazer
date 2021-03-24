import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/Pages/UserAccess/components/OrgButton.dart';
import 'package:noupartazer_app/Atish/components/Text/HugeText.dart';
import 'package:noupartazer_app/Atish/components/Text/MediumText.dart';
import 'package:noupartazer_app/Koomalai/Pages/RegistrationPage/BusinessRegistration.dart';
import 'package:noupartazer_app/Koomalai/Pages/RegistrationPage/NGORegistration.dart';

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
            top: constraints.maxHeight * 0.01,
            bottom: constraints.maxHeight * 0.01,
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
          margin: EdgeInsets.only(top: constraints.maxHeight * 0.01),
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Container
              (
                height: constraints.maxHeight * 0.15,
                width: constraints.maxWidth * 0.8,

                constraints: BoxConstraints
                (
                  minWidth: 300,
                  minHeight: 110
                ),
                child: OrgButton
                (
                  title: 'NGO',
                  icon: Icons.favorite,
                  onPress: NGORegistration(),
                  transitionType: 'rightToLeft',
                  transitionDuration: 1100,                  
                ),
              ),

              Container
              (
                margin: EdgeInsets.only(top: constraints.maxHeight * 0.025,),
                height: constraints.maxHeight * 0.15,
                width: constraints.maxWidth * 0.8,
                constraints: BoxConstraints
                (
                  minWidth: 300,
                  minHeight: 110
                ),
                child: OrgButton
                (
                  title: 'BUSINESS',
                  icon: Icons.business,
                  onPress: BusinessRegistration(),
                  transitionType: 'rightToLeft',
                  transitionDuration: 1100,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}