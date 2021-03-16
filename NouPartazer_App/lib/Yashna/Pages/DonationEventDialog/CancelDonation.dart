import 'package:noupartazer_app/Yashna/Pages/DonationEventDialog/DonationEventModel.dart';

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