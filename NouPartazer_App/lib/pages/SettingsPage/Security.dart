import 'package:flutter/material.dart';

import 'package:noupartazer_app/Global.dart';
import 'package:noupartazer_app/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/components/PageTitle.dart';
import 'package:noupartazer_app/components/SectionTitle.dart';
import 'package:noupartazer_app/components/Buttons/SmallButtonIconText.dart';
import 'package:noupartazer_app/components/CustomTextField.dart';
import 'package:noupartazer_app/Pages/Dialogs/ConfirmationDialog/DeactivateAccount.dart';

class Security extends StatefulWidget
{
  @override
  _SecurityState createState() => _SecurityState();
}

class _SecurityState extends State<Security>
{
  final _formKey = GlobalKey<FormState>();
  TextEditingController oldPasswordCtrl, newPasswordCtrl;

  @override
  void initState()
  {
    super.initState();
    
    oldPasswordCtrl = new TextEditingController();
    newPasswordCtrl = new TextEditingController();
  }

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
            padding: EdgeInsets.symmetric
            (
              horizontal: Global().smallPageMargin,
            ),
            child: Column
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Form
                (
                  key: _formKey,
                  
                  child: Column
                  (
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      SectionTitle
                      (
                        text: 'CHANGE PASSWORD',
                      ),

                      CustomTextField
                      (
                        controller: oldPasswordCtrl,
                        keyboardType: TextInputType.visiblePassword,
                        labelText: 'Old password',
                        suffixIcon: Icons.https_outlined,
                      ),

                      CustomTextField
                      (
                        controller: newPasswordCtrl,
                        keyboardType: TextInputType.visiblePassword,
                        labelText: 'New password',
                        suffixIcon: Icons.https_outlined,
                        margin: EdgeInsets.only(bottom: 0),
                      ),
                      
                      Container
                      (
                        padding: EdgeInsets.symmetric
                        (
                          horizontal: Global().smallSpacing,
                        ),
                        width: constraints.maxWidth,
                        child: LargeCustomButtonIconText
                        (
                          text: 'Change Password',
                        )
                      ),

                    ],
                  ),
                ),
                
                Container
                (
                  margin: EdgeInsets.only
                  (
                    bottom: Global().mediumSpacing,
                  ),
                  child: SmallButtonIconText
                  (
                    text: 'Delete my account',
                    icon: Icons.delete_outlined,
                    fontWeight: FontWeight.bold,
                    iconColor: Color.fromRGBO(212, 0, 0, 1),
                    textColor: Color.fromRGBO(212, 0, 0, 1),
                    buttonColor: Color.fromRGBO(255, 255, 255, 0),
                    elevation: 0,
                    isPopUpPage: true,
                    onPress: deactivateDialog,
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
