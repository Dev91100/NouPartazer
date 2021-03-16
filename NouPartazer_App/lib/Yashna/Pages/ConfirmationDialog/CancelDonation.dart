import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/ConfirmationDialogModel.dart';

class CancelDonation extends ConfirmationDialogModel
{
  final String text;

  CancelDonation
  (
    {
      this.text = 'I agree to terminate this request for the donation.'
    }
  ) : super(text: text);
}