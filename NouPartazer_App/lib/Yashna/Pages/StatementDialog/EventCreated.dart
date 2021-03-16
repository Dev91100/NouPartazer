import 'package:noupartazer_app/Yashna/components/Statement.dart';

class EventCreated extends Statement
{
  String text;

  EventCreated
  (
    {
      this.text = 'Event created successfully.'
    }
  ) : super(text: text);
}