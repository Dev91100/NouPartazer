import 'package:noupartazer_app/Pages/Dialogs/ConfirmationDialog/ConfirmationModel.dart';
import 'package:noupartazer_app/Pages/UserAccess/UserAccessPanel.dart';

//This file is the alert dialog to log out

class ConfirmLogOut extends ConfirmationModel
{
  String text;

  ConfirmLogOut
  (
    {
      this.text = 'Please confirm logout!'
    }
  ) : super
  (
    text: text,
    onPress: UserAccessPanel(),
  );
}