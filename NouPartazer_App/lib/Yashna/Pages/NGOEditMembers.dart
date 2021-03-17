import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/components/RoundIconButton.dart';
import 'package:noupartazer_app/Koomalai/Pages/SettingsPage/NGOAndBusinessSettings.dart';

class NGOEditMembers
{
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
            crossAxisAlignment: CrossAxisAlignment.end,
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

              Center
              (
                child: Stack
                (
                  children:
                  [
                    CircleAvatar
                    (
                      radius: 60.0, 
                      backgroundImage: AssetImage(""),
                    ),

                    EditIconButton
                    (
                      onPress: NGOAndBusinessSettings(),
                      isPage: true,
                      icon: Icons.edit_outlined,
                      height: 40,
                      width: 40,
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: 0,
                      size: 30,
                    ),
                  ]
                ),
              ),
                
              ListTile
              (
                leading: Icon(Icons.perm_identity),
                title: Text
                (
                  "FULL NAME",
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
                leading: Icon(Icons.title),
                title: Text
                (
                  "POSITION",
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
                margin: EdgeInsets.only(top: 20, bottom: 15),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    // Padding
                    // (
                    //   padding: EdgeInsets.all(50.0),
                    // ),
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