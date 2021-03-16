import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/ConfirmationModel.dart';

class ConfirmLogOut extends ConfirmationModel
{
  String text;

  ConfirmLogOut
  (
    {
      this.text = 'Please confirm logout!'
    }
  ) : super(text: text);
}