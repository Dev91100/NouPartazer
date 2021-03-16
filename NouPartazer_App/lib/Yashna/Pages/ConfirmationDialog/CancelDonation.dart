import 'package:noupartazer_app/Yashna/components/ConfirmationDialog.dart';

class CancelDonation extends ConfirmationDialog
{
  final String text;

  CancelDonation
  (
    {
      this.text = 'I agree to terminate this request for the donation.'
    }
  ) : super(text: text);
}