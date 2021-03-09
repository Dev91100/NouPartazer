import 'package:flutter/material.dart';

class LanguageConfirmation extends StatefulWidget {
  LanguageConfirmation({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LanguageConfirmationState createState() => _LanguageConfirmationState();
}

class _LanguageConfirmationState extends State<LanguageConfirmation> {

String valueChoose;
List listItem = [
"English", "French"
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: DropdownButton(
          value: valueChoose,
          onChanged: (newValue){
          setState((){
          valueChoose = newValue;
          });
          },
          items: listItem.map((valueItem) {
           return DropdownMenuItem(
            value: valueItem,
            child: Text(valueItem),
          
          
         
          ).tolist(),
         ),
        ),
       )
      }



      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
