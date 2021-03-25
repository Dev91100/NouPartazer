import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/ConfirmationModel.dart';
import 'package:noupartazer_app/Atish/Pages/UserAccess/UserAccessPanel.dart';

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