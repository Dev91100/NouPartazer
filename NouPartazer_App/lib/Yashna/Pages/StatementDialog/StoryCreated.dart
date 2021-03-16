import 'package:noupartazer_app/Yashna/Pages/StatementDialog/StatementModel.dart';

class StoryCreated extends StatementModel
{
  String text;

  StoryCreated
  (
    {
      this.text = 'Story created successfully.'
    }
  ) : super(text: text);
}