import 'package:noupartazer_app/Yashna/components/Statement.dart';

class StoryCreated extends Statement
{
  String text;

  StoryCreated
  (
    {
      this.text = 'Story created successfully.'
    }
  ) : super(text: text);
}