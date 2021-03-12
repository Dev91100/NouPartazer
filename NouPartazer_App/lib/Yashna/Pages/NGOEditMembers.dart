import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/components/EditIconButton.dart';
import 'package:NouPartazer_App/Koomalai/src/Settings/Setting.dart';

class NGOEditMembers extends StatefulWidget
{
  @override
  _NGOEditMembersState createState() => _NGOEditMembersState();
}

class _NGOEditMembersState extends State<NGOEditMembers>
{
  get actions => null;

  @override
  Widget build(BuildContext context) => Scaffold
  (
    //resizeToAvoidBottomInset: false,
    backgroundColor: Colors.white,
    appBar: AppBar
    (
      title: Text("Bottom Dialog"),
      actions:
      [
        IconButton
        (
          icon: Icon(Icons.open_in_new),
          onPressed: showBottomSheet,
        ),
      ],
    ),
    body: Center(),
  );
        
  void showBottomSheet() => showModalBottomSheet
  (
    shape: RoundedRectangleBorder
    (
      borderRadius: BorderRadius.only
      (
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
      )
    ),

    context: context,
    
    builder: (context) => SingleChildScrollView
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
                  openPage: Settings(),
                  isModalPage: false,
                  icon: Icons.edit_outlined,
                  height: 40,
                  width: 40,
                  left: 0,
                  top: 0,
                  right: 0,
                  bottom: 0,
                  size: 30,
                ),
                // Positioned
                // (
                //   bottom: 20.0, 
                //   right: 20.0 , 
                //   child: Icon
                //   (
                //     Icons.edit_outlined
                //   ),
                // ),
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
    )
  );
}