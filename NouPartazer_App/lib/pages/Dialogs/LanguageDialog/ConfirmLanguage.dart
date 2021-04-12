import 'package:noupartazer_app/Pages/Dialogs/LanguageDialog/LanguageConfirmationModel.dart';

//This adapts the model to look like a bottom sheet which prompts the user to change the language

class ConfirmLanguage extends LanguageConfirmationModel
{
  String text = '';

  ConfirmLanguage
  (  
    {
      this.text = 'Choose your language:',
    } 
  ) : super(text: text);
}