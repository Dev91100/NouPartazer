import 'package:NouPartazer_App/Yashna/components/TickboxesPopup.dart';

class CancelEvent extends TickboxesPopups
{
  final String text;
  
  CancelEvent
  (
    {
      this.text = 'I agree to terminate this event.'
    }
  ) : super(text: text);
}