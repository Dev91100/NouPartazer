import 'package:noupartazer_app/Yashna/Pages/StatementDialog/StatementModel.dart';

class EventCreated extends StatementModel
{
  String text;

  EventCreated
  (
    {
      this.text = 'Event created successfully.'
    }
  ) : super(text: text);
}