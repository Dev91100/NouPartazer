import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Atish/components/ButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/CustomTextField.dart';

import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/DeactivateAccount.dart';

class Security extends StatelessWidget
{
  final _oldPWController = TextEditingController();
  final _newPWController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    var deactivateDialog = DeactivateAccount().displayDialog(context);

    return Scaffold
    (
      resizeToAvoidBottomInset: false, // Prevents Delete my account from pulling up when activating the keyboard
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
            padding: EdgeInsets.only
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
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    SectionTitle
                    (
                      title: 'CHANGE PASSWORD',
                      left: 0,
                      top: 15,
                    ),

                    CustomTextField
                    (
                      labelText: 'OLD PASSWORD',
                      suffixIcon: Icons.https_outlined,
                    ),

                    CustomTextField
                    (
                      labelText: 'NEW PASSWORD',
                      suffixIcon: Icons.https_outlined,
                    ),
                    
                    Container
                    (
                      padding: EdgeInsets.only
                      (
                        right: 15,
                        left: 15
                      ),
                      margin: EdgeInsets.only(top: 20),
                      width: constraints.maxWidth,
                      child: LargeCustomButtonIconText
                      (
                        text: 'Change Password',
                      )
                    ),

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

class CustomIconText {
}
