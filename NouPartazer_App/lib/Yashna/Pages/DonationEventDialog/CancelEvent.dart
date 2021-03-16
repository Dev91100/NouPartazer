import 'package:noupartazer_app/Yashna/Pages/DonationEventDialog/DonationEventModel.dart';

class CancelEvent extends DonationEventModel
{
  final String text;
  
  CancelEvent
  (
    {
      this.text = 'I agree to terminate this event.'
    }
  ) : super(text: text);
}