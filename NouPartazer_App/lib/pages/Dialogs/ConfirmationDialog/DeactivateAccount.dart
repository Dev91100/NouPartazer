import 'package:noupartazer_app/Pages/Dialogs/ConfirmationDialog/ConfirmationModel.dart';

//This file is the alert dialog to deactivate an account

class DeactivateAccount extends ConfirmationModel
{
  String text;
  String buttonText2;
  bool hasTextField;

  DeactivateAccount
  (
    {
      this.text = 'Please enter your password.',
      this.buttonText2 = 'Deactivate',
      this.hasTextField = true,
    }
  ) : super
  (
    text: text,
    buttonText2: buttonText2,
    hasTextField: hasTextField
  );
}