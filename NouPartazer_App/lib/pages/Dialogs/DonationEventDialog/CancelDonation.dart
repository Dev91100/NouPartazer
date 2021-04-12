import 'package:noupartazer_app/Pages/Dialogs/DonationEventDialog/DonationEventModel.dart';

//This file is the alert dialog to cancel a donation

class CancelDonation extends DonationEventModel
{
  final String text;

  CancelDonation
  (
    {
      this.text = 'I agree to terminate this request for the donation.'
    }
  ) : super(text: text);
}