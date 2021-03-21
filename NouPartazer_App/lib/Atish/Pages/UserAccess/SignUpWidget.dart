import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/Pages/UserAccess/components/OrgButton.dart';
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
            child: Text
            (
              "Let's get started,",
              style: TextStyle
              (
                color: Color.fromRGBO(245, 197, 41, 1),
                fontSize: 45.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),

        Container
        (
          margin: EdgeInsets.only
          (
            bottom: constraints.maxHeight * 0.01,
          ),
          alignment: Alignment.bottomLeft,
          child: FittedBox
          (
            fit: BoxFit.contain,
            child: Text
            (
              "Choose your organisation type",
              style: TextStyle
              (
                color: Colors.white,
                fontSize: 22.0
              ),
            ),
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