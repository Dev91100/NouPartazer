import 'package:NouPartazer_App/Yashna/components/TickboxesPopup.dart';

class AcceptDonation extends TickboxesPopups
{
  String text;

  AcceptDonation
  (
    {
      this.text = 'I have read and understood all information pertaining to this event and agree to undertake this donation.'
    }
  ) : super(text: text);
}