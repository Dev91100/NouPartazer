import 'package:flutter/material.dart';
import './AcceptDonation.dart';

class AcceptDonationHomePage extends StatefulWidget {
  AcceptDonationHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  AcceptDonationHomePageState createState() => AcceptDonationHomePageState();
}

class AcceptDonationHomePageState extends State<AcceptDonationHomePage> {
  bool tappedYes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: Center(
      //   child: Text(
      //     tappedYes.toString(),
      //     style: TextStyle(
      //       fontSize: 28,
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // final action =
              await AcceptDonation.yesAbortDialog(context, 
              'Please tick the checkbox to confirm', 
              'I have read and understood all information pertaining to this event and agree to undertake this donation.');
              
          // if (action == DialogAction.yes) {
          //   setState(() => tappedYes = true);
          // } else {
          //   setState(() => tappedYes = false);
          // }
        },
        child: Icon(Icons.add),
       
      ),
    );
  }
}