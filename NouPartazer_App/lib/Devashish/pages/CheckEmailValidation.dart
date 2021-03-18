import 'package:flutter/material.dart';

import 'package:noupartazer_app/Devashish/components/CheckEmailTemplate.dart';

class CheckEmailValidation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: CheckEmailTemplate
      (
        theParagraph: "We have sent you a validation link to the registered email address.",
        theButtonName: "Login",
      ),
    );
  }
}