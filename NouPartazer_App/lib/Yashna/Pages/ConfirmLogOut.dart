import 'package:noupartazer_app/Yashna/components/ConfirmationPopup.dart';
import 'package:flutter/cupertino.dart';

class ConfirmLogOut extends ConfirmationPopup
{
  String confirmationText = '';
  String leftButton = '';
  String rightButton = '';
  double contentHorizontalPadding = 0.1;

  ConfirmLogOut
  (  
    {
      this.confirmationText = 'Please confirm logout!',
      this.leftButton = 'Cancel',
      this.rightButton = 'Logout',
      this.contentHorizontalPadding = 0.1,
    } 
  ): super(confirmationText: confirmationText, leftButton: leftButton, rightButton: rightButton, contentHorizontalPadding: contentHorizontalPadding);
}
