import 'package:noupartazer_app/Yashna/Pages/ConfirmationDialog/ConfirmationDialogModel.dart';

class AcceptDonation extends ConfirmationDialogModel
{
  String text;

  AcceptDonation
  (
    {
      this.text = 'I have read and understood all information pertaining to this event and agree to undertake this donation.'
    }
  ) : super(text: text);
}