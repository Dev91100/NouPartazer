import 'package:noupartazer_app/Yashna/components/Statement.dart';

class ChangesUpdated extends Statement
{
  String text;

  ChangesUpdated
  (
    {
      this.text = 'Changes Updated!'
    }
  ) : super(text: text);
}