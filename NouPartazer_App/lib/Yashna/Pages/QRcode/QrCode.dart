import 'package:noupartazer_app/Yashna/Pages/QRCode/QRCodeModel.dart';

class QRCode extends QRCodeModel
{
  String text;

  QRCode
  (
    {
      this.text = 'This must be scanned by the NGO in order to complete the process.',
    }
  ) : super(text: text);
}