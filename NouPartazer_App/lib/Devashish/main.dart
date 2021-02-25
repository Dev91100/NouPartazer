import 'package:flutter/material.dart';
import 'ForgotPassword.dart';

void main() => runApp(MyApp());
// void main() {
//   Color _borderColor;

//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//   ));
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgotPassword(),
    );
  }
}
