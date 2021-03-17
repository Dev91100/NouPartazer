import 'package:flutter/material.dart';

class ConfirmLanguage
{
  final String title;
  //final String dropdownButton;
  final String leftButton;
  final String rightButton;

  const ConfirmLanguage
  ({
    @required this.title,
    //@required this.dropdownButton,
    @required this.leftButton,
    @required this.rightButton,
   
  });

  StatefulBuilder displayBottomSheet(BuildContext context)
  {
    String valueChoose;
    List listItem = ["English"];

    var bottomSheet = StatefulBuilder
    (
      builder: (context, setState)
      {
        return SingleChildScrollView
        (
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.end ,
            mainAxisSize: MainAxisSize.min,
            children:
            [
              IconButton
              (
                icon: Icon(Icons.close),
                onPressed: ()
                {
                  //Put your code here which you want to execute on close button click.
                  Navigator.of(context).pop();
                },
              ),
            
              Container
              (
                // margin: EdgeInsets.only
                // (
                //   top: 20,
                //   bottom: 15
                // ),
                child: Row
                (
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                  Text(
                  title,
                            textAlign: TextAlign.center,
                            style: TextStyle
                            (
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              //color: Color.fromRGBO(0, 0, 0, 1),
                            )
                  ),
                        
                        DropdownButton(
                        hint: Text("English"),
                        dropdownColor: Colors.grey,
                        icon: Icon(Icons.arrow_drop_down_outlined),
                        iconSize: 36,
                        isExpanded: true,
                        style: TextStyle(
                          
                         color: Color.fromRGBO(0, 0, 0, 1),
                         ),
                        value: valueChoose,
                        onChanged: (newValue){
                          setState((){
                          valueChoose=newValue;
                          } );
                        },
                        items: listItem.map((valueItem){

                        return DropdownMenuItem(
                          value: valueItem,
                        child: Text(valueItem),
                        );
                        }).toList(),
                        
                      ),


                    TextButton
                    (
                      child: Text
                      (
                        leftButton,
                        style: TextStyle
                        (
                          decoration:TextDecoration.underline,
                          color: Color.fromRGBO(102, 102, 102, 1),
                          fontSize: 20.0,     
                        )
                      ),
                      
                      onPressed: ()
                      {
                        //Put your code here which you want to execute on Yes button click.
                        Navigator.of(context).pop();
                      },
                    ),
                      
                    Padding
                    (
                      padding: EdgeInsets.all(10.0),
                    ),
                    
                    OutlinedButton
                    (
                      child: Text
                      (
                        rightButton,
                        style: TextStyle
                        (
                          color: Color.fromRGBO(245, 197, 41, 1),
                          fontSize: 20.0,
                        ),
                      ),

                      style: OutlinedButton.styleFrom
                      (
                        backgroundColor: Colors.yellow[50],
                        side: BorderSide(color: Color.fromRGBO(245, 197, 41, 1), width: 1.5),
                        primary: Color.fromRGBO(212, 0, 0, 1),
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),  
                      ),
                          
                      onPressed: ()
                      {
                        //Put your code here which you want to execute on Cancel button click.
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                )          
              ),
            ]
          ),
        );
      }
    );
    return bottomSheet;
  }
}