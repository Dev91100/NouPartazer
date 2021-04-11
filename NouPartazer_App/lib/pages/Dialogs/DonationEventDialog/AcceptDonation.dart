import 'package:noupartazer_app/Pages/Dialogs/DonationEventDialog/DonationEventModel.dart';

//This file is the alert dialog to accept a donation

class AcceptDonation extends DonationEventModel
{
  String text;

  AcceptDonation
  (
    {
      this.text = 'I have read and understood all information pertaining to this event and agree to undertake this donation.'
    }
  ) : super(text: text);
}