import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:convert';
// import 'package:http/http.dart' as http;

class UploadImage extends StatefulWidget {
  @override
  _UploadImageState createState() => _UploadImageState();
}


class _UploadImageState extends State<UploadImage> 
{

  Future<File> file;
  // String status = '';
  // String base64Image;
  // File tmpFile;
  // String errMessage = 'Error Uploading Image';



  chooseImage() {
    setState(() {
      file = ImagePicker.pickImage(source: ImageSource.gallery);
    });
    // setStatus('');
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: file,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            null != snapshot.data) {
          // tmpFile = snapshot.data;
          // base64Image = base64Encode(snapshot.data.readAsBytesSync());
          return Flexible(
            child: Image.file(
              snapshot.data,
              fit: BoxFit.fill,
            ),
          );
        } else if (null != snapshot.error) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

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
                    
                    onPressed: chooseImage,
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