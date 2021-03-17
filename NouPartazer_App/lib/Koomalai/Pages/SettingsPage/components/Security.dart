import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';

import 'package:noupartazer_app/Devashish/components/FieldTitle.dart';
import 'package:noupartazer_app/Devashish/components/TextFields.dart';
import 'package:noupartazer_app/Devashish/components/TheOutlinedButtons.dart';
import 'package:noupartazer_app/Atish/components/ButtonIconText.dart';
import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/DeactivateAccount.dart';

class NGOSecurity extends StatelessWidget
{
  final _oldPWController = TextEditingController();
  final _newPWController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    var deactivateDialog = DeactivateAccount().displayDialog(context);

    return Scaffold
    (
      appBar: PageTitle
      (
        text: 'SECURITY',
        hasBackButton: true,
      ),
      body: LayoutBuilder
      (
        builder: (ctx, constraints)
        {
          return Container
          (
            margin: EdgeInsets.only
            (
              right: 20,
              left: 20,
            ),
            child: Column
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Column
                (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    SectionTitle
                    (
                      title: 'CHANGE PASSWORD',
                      top: 15,
                    ),
                    SizedBox(height: constraints.maxHeight * 0.03,),

                    Container
                    (
                      child: FieldTitle(fieldTitle: 'ENTER OLD PASSWORD', ),
                    ),

                    Container
                    (
                      child: TextFields(textFieldControllerName: _oldPWController, theprefixIcon: Icons.https_outlined, isPassword: true,),
                    ),

                    Container
                    (
                      child: FieldTitle(fieldTitle: 'CREATE NEW PASSWORD', ),
                    ),

                    Container
                    (
                      child: TextFields
                      (
                        textFieldControllerName: _newPWController,
                        theprefixIcon: Icons.https_outlined, 
                        isPassword: true,
                      ),
                    ),

                    Container
                    (
                      child: TheOutlinedButtons
                      (
                        // press: ,
                        message: 'Change Password',
                      ),
                    )

                  ],
                ),
                
                Container
                (
                  margin: EdgeInsets.only
                  (
                    bottom: 20,
                  ),
                  child: ButtonIconText
                  (
                    text: 'Delete my account',
                    icon: Icons.delete_outlined,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    iconColor: Color.fromRGBO(212, 0, 0, 1),
                    textColor: Color.fromRGBO(212, 0, 0, 1),
                    buttonColor: Color.fromRGBO(255, 255, 255, 0),
                    elevation: 0,
                    isPopUpPage: true,
                    onPress: deactivateDialog,
                    // openPage: ,
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
