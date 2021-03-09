import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Bottom Dialog';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  get actions => null;



  @override
  Widget build(BuildContext context) => Scaffold(
     //resizeToAvoidBottomInset: false,
     backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(widget.title),
          
          
          actions: [

            IconButton(
              icon: Icon(Icons.open_in_new),
              onPressed: showBottomSheet,
                
            ),
          ],
          
        ),
      body: Center(),
     
      
 );
        
    void showBottomSheet() => showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
      )
    ),

      context: context,
      
      builder: (context) => SingleChildScrollView(
        child: Column(
        mainAxisSize: MainAxisSize.min,
          
        children: <Widget> [
           
           IconButton(
              icon: Icon(Icons.close),
              //alignment: Alignment.topRight,
              padding: EdgeInsets.only(left: 350),
              onPressed: () {
                //Put your code here which you want to execute on close button click.
                Navigator.of(context).pop();
              },
           
              ),
                  
        ListTile(
            leading: Icon(Icons.language),
            title: Text("WEBSITE",
            style: TextStyle
                    (
                      color: Color.fromRGBO(102, 102, 102, 1),
                  ),
            
            ),
            subtitle: TextField(
             style: TextStyle
                    (
                      color: Color.fromRGBO(0, 0, 0, 1),
                    
                    )
                    ),
        
            onTap: () => {}, 
        ),
          
         ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text("EMAIL",
            style: TextStyle
                    (
                      color: Color.fromRGBO(102, 102, 102, 1),
                  
                    ),
            
            ),
            subtitle: TextField(
             style: TextStyle
                    (
                      color: Color.fromRGBO(0, 0, 0, 1),
                    
                    )
                    ),
           onTap: () => {},
         ),
           
           ListTile(
            leading: Icon(Icons.phone_outlined),
            title: Text("PHONE",
            style: TextStyle
                    (
                      color: Color.fromRGBO(102, 102, 102, 1),
                  
                    ),
            
            ),
            subtitle: TextField(
             style: TextStyle
                    (
                      color: Color.fromRGBO(0, 0, 0, 1),
                    
                    )
                    ),
           onTap: () => {},
           ),
        
         Container(
          child : Row(
            children: <Widget> [
              Padding(padding: 
              EdgeInsets.all(50.0), ),
             TextButton(
              child: Text("Cancel",
              style: TextStyle
                    (
                      decoration:TextDecoration.underline,
                      color: Color.fromRGBO(102, 102, 102, 1),
                      fontSize: 20.0,
                         
                    )
                    ),
              
              onPressed: () {
                //Put your code here which you want to execute on Yes button click.
                Navigator.of(context).pop();
              },
              ),
                
              Padding(padding: 
              EdgeInsets.all(10.0), ),
              
              OutlinedButton(
              child: Text("Save",
               style: TextStyle
                    (
                      color: Color.fromRGBO(245, 197, 41, 1),
                      fontSize: 20.0,
                      
                    ),
              ),
               style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.yellow[50],
                      side: BorderSide(color: Color.fromRGBO(245, 197, 41, 1), width: 1.5),
                      primary: Color.fromRGBO(212, 0, 0, 1),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),
                     
                    ),
                    
                      onPressed: () {
                //Put your code here which you want to execute on Cancel button click.
                Navigator.of(context).pop();
                
              },
              
               ),
            ],
          )
         
           
           
           ),

        

        ]
        ),
      ));
    
}