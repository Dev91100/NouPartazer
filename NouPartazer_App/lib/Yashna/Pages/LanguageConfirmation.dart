import 'package:noupartazer_app/Yashna/components/ConfirmLanguage.dart';
// import 'package:flutter/cupertino.dart';

// Widget DeleteMembers()
// {
//   DeleteMember()
// }
class LanguageConfirmation extends ConfirmLanguage
{
  String title = '';
  String leftButton = '';
  String rightButton = '';

  LanguageConfirmation
  (  
    {
      this.title = 'Choose your language',
      this.leftButton = 'Cancel',
      this.rightButton = 'Save',
    } 
  ): super(title: title, leftButton: leftButton, rightButton: rightButton);
}