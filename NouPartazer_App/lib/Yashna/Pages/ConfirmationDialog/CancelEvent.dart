import 'package:NouPartazer_App/Yashna/components/ConfirmationDialog.dart';

class CancelEvent extends ConfirmationDialog
{
  final String text;
  
  CancelEvent
  (
    {
      this.text = 'I agree to terminate this event.'
    }
  ) : super(text: text);
}