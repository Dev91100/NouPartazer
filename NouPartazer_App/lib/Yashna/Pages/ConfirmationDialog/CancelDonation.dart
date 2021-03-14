import 'package:NouPartazer_App/Yashna/components/TickboxPopup.dart';

class CancelDonation extends TickboxPopup
{
  final String text;

  CancelDonation
  (
    {
      this.text = 'I agree to terminate this request for the donation.'
    }
  ) : super(text: text);
}