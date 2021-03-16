import 'package:noupartazer_app/Yashna/components/ConfirmationPopup.dart';
// import 'package:flutter/cupertino.dart';

// Widget DeleteMembers()
// {
//   DeleteMember()
// }
class DeleteMember extends ConfirmationPopup
{
  String confirmationText = '';
  String leftButton = '';
  String rightButton = '';

  DeleteMember
  (  
    {
      this.confirmationText = 'Are you sure you want to delete this member?',
      this.leftButton = 'Cancel',
      this.rightButton = 'Delete',
    } 
  ): super(confirmationText: confirmationText, leftButton: leftButton, rightButton: rightButton);
}