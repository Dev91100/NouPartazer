import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  @override
  _UploadImageState createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) 
  {
    final screen = MediaQuery.of(context);

    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Container
        (
          height: screen.size.height * 0.24,
          margin: EdgeInsets.only
          (
            right: constraints.maxWidth * 0.062,
            left: constraints.maxWidth *0.062,
            bottom: screen.size.height * 0.02,
          ),
          child: DottedBorder(
            strokeWidth: 2,
            dashPattern: [6, 3],
            radius: Radius.circular(4),
            borderType: BorderType.RRect,
            child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Center(
                child: Container(
                  width: constraints.maxWidth * 0.42,
                  child: OutlinedButton(
                    
                    onPressed: () {},
                    style: OutlinedButton.styleFrom
                    (
                      primary: Colors.black,
                      backgroundColor: Colors.grey[300],
                      shape: const RoundedRectangleBorder
                      (
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      side: BorderSide
                      (
                        color: Colors.black, 
                        width: 1.5
                      ),
                    ),
                    // color: Colors.amber,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: screen.size.height * 0.005,),
                      child: Text(                      
                        'Upload Image',
                        textAlign: TextAlign.center,
                        style: TextStyle
                        (
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            )
          ),
        );
      }
    );
  }
}