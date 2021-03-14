import 'package:NouPartazer_App/Yashna/components/ConfirmationPopup.dart';

class ConfirmLogOut extends ConfirmationPopup
{
  String confirmationText;
  String leftButton;
  String rightButton;

  ConfirmLogOut
  (  
    {
      this.confirmationText = 'Please confirm logout!',
      this.leftButton = 'Cancel',
      this.rightButton = 'Logout',
    } 
  ): super(confirmationText: confirmationText, leftButton: leftButton, rightButton: rightButton);
}
