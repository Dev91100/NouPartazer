import 'dart:convert';
/*import 'dart:js';*/

import 'package:flutter/material.dart';
/*import 'package:flutter_auth/Screens/Login/components/background.dart';*/
import 'package:NouPartazer_App/Koomalai/Screens/Login/login_screen.dart';
import 'package:NouPartazer_App/Koomalai/Screens/Signup/signup_screen.dart';
import 'package:NouPartazer_App/Koomalai/components/already_have_an_account_acheck.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_button.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_input.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_input_field.dart';
import 'package:NouPartazer_App/Koomalai/components/rounded_password_field.dart';
import 'package:NouPartazer_App/Koomalai/components/text_field.dart';
import 'package:NouPartazer_App/Koomalai/src/screens/mainScreen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:settings_ui/settings_ui.dart';

import '../Business ongoing event details.dart';
import 'background.dart';

/*import '../Business.dart';*/

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainScreen(),

    );
  }
}





