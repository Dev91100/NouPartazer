import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Yashna/sample/CancelEvent.dart';

class CancelEventHomepage extends StatefulWidget {
  CancelEventHomepage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CancelEventHomepageState createState() => _CancelEventHomepageState();
}

class _CancelEventHomepageState extends State<CancelEventHomepage> {
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
              'I agree to terminate this event.');
              
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