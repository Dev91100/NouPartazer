import 'package:noupartazer_app/Pages/Dialogs/StatementDialog/StatementModel.dart';

class ChangesUpdated extends StatementModel
{
  String text;

  ChangesUpdated
  (
    {
      this.text = 'Changes Updated!'
    }
  ) : super(text: text);
}