import 'package:noupartazer_app/Yashna/components/ConfirmationDialog.dart';

class AcceptDonation extends ConfirmationDialog
{
  String text;

  AcceptDonation
  (
    {
      this.text = 'I have read and understood all information pertaining to this event and agree to undertake this donation.'
    }
  ) : super(text: text);
}