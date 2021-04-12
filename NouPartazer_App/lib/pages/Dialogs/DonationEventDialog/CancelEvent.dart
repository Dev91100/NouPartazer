import 'package:noupartazer_app/Pages/Dialogs/DonationEventDialog/DonationEventModel.dart';

//This file is the alert dialog to cencel an event

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