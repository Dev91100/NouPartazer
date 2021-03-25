import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/ConfirmationModel.dart';

class DeleteMember extends ConfirmationModel
{
  final String text;
  final String buttonText2;

  DeleteMember
  (
    {
      this.text = 'Are you sure you want to delete this member?',
      this.buttonText2 = 'Delete',
    }
  ) : super
  (
    text: text,
    buttonText2: buttonText2,
  );
}