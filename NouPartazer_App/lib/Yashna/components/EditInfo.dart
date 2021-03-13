import 'package:flutter/material.dart';

class EditInfo
{
  final String title;
  final String text1;
  final String text2;
  final String text3;
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;

  const EditInfo
  ({
    @required this.title,
    @required this.text1,
    @required this.text2,
    @required this.text3,
    @required this.icon1,
    @required this.icon2,
    @required this.icon3,
  });

  StatefulBuilder displayBottomSheet(BuildContext context)
  {
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
                //alignment: Alignment.topRight,
                //padding: EdgeInsets.only(left: 200),
                onPressed: ()
                {
                  //Put your code here which you want to execute on close button click.
                  Navigator.of(context).pop();
                },
              ),
                      
              ListTile
              (
                leading: Icon(icon1),
                title: Text
                (
                  text1,
                  style: TextStyle
                  (
                    color: Color.fromRGBO(102, 102, 102, 1),
                  ),
                ),

                subtitle: TextField
                (
                  style: TextStyle
                  (
                    color: Color.fromRGBO(0, 0, 0, 1),
                  )
                ),
            
                onTap: () => {}, 
              ),
              
              ListTile
              (
                leading: Icon(icon2),
                title: Text
                (
                  text2,
                  style: TextStyle
                  (
                    color: Color.fromRGBO(102, 102, 102, 1),
                  ),
                ),
                subtitle: TextField
                (
                  style: TextStyle
                  (
                    color: Color.fromRGBO(0, 0, 0, 1),
                  )
                ),
                onTap: () => {},
              ),
                
              ListTile
              (
                leading: Icon(icon3),
                title: Text
                (
                  text3,
                  style: TextStyle
                  (
                    color: Color.fromRGBO(102, 102, 102, 1),
                  ),
                ),

                subtitle: TextField
                (
                  style: TextStyle
                  (
                    color: Color.fromRGBO(0, 0, 0, 1),
                  )
                ),

                onTap: () => {},
              ),
            
              Container
              (
                margin: EdgeInsets.only
                (
                  top: 20,
                  bottom: 15
                ),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    TextButton
                    (
                      child: Text
                      (
                        "Cancel",
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
                        "Save",
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