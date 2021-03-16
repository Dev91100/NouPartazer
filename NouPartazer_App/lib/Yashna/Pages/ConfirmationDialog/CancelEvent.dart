import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/ConfirmationDialogModel.dart';

class CancelEvent extends ConfirmationDialogModel
{
  final String text;
  
  CancelEvent
  (
    {
      this.text = 'I agree to terminate this event.'
    }
  ) : super(text: text);
}