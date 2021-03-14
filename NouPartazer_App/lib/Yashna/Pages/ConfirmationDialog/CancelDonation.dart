import 'package:NouPartazer_App/Yashna/components/TickboxesPopup.dart';

class CancelDonation extends TickboxesPopups
{
  final String text;

  CancelDonation
  (
    {
      this.text = 'I agree to terminate this request for the donation.'
    }
  ) : super(text: text);
}