import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/Buttons/LargeCustomButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/PageTitle.dart';
import 'package:noupartazer_app/Atish/components/SectionTitle.dart';
import 'package:noupartazer_app/Atish/components/Buttons/SmallButtonIconText.dart';
import 'package:noupartazer_app/Atish/components/CustomTextField.dart';
import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/DeactivateAccount.dart';
import 'package:noupartazer_app/Devashish/Global.dart';

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
                        title: 'CHANGE PASSWORD',
                        left: 0,
                        top: 15,
                        fontSize: Global().profileSectionTitle,
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
                          fontSize: Global().settingsChangePWButton,
                        )
                      ),

                    ],
                  ),
                ),
                
                Container
                (
                  margin: EdgeInsets.only
                  (
                    bottom: 20,
                  ),
                  child: SmallButtonIconText
                  (
                    text: 'Delete my account',
                    icon: Icons.delete_outlined,
                    fontSize: Global().normalText,
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
