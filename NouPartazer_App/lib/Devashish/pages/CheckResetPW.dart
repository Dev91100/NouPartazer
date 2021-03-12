import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Devashish/components/CheckEmailTemplate.dart';

class CheckResetPW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckEmailTemplate
      (
        theParagraph: "We have sent you a reset password link to the registered email address.",
        theButtonName: "Resend Email",
      ),
    );
  }
}