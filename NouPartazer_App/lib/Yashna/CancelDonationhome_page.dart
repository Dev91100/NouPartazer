import 'package:flutter/material.dart';
import 'package:sample/CancelDonation.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool tappedYes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          tappedYes.toString(),
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final action =
              await Dialogs.yesAbortDialog(context, 
              'Please tick the checkbox to confirm', 
              'I agree to terminate this request for the donation.');
              
          if (action == DialogAction.yes) {
            setState(() => tappedYes = true);
          } else {
            setState(() => tappedYes = false);
          }
        },
        child: Icon(Icons.add),
       
      ),
    );
  }
}