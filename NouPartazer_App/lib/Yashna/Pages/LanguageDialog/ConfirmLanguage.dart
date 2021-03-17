import 'package:noupartazer_app/Yashna/Pages/LanguageDialog/LanguageConfirmationModel.dart';

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