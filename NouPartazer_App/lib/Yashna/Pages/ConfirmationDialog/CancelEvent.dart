import 'package:noupartazer_app/Yashna/components/TickboxPopup.dart';

class CancelEvent extends TickboxPopup
{
  final String text;
  
  CancelEvent
  (
    {
      this.text = 'I agree to terminate this event.'
    }
  ) : super(text: text);
}