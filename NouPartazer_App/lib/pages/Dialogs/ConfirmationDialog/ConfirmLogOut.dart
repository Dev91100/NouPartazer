import 'package:noupartazer_app/Pages/Dialogs/ConfirmationDialog/ConfirmationModel.dart';
import 'package:noupartazer_app/Pages/UserAccess/UserAccessPanel.dart';

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