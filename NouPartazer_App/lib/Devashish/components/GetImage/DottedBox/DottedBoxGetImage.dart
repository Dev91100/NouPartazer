import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:io';
// import 'dart:convert';

import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Devashish/components/GetImage/DottedBox/DottedBoxWithUploadButton.dart';

class DottedBoxGetImage extends StatefulWidget
{
  @override
  _DottedBoxGetImageState createState() => _DottedBoxGetImageState();
}

class _DottedBoxGetImageState extends State<DottedBoxGetImage>
{
  Future<File> file;
  // String status = '';
  // String base64Image;
  // File tmpFile;
  // String errMessage = 'Error Uploading Image';

  chooseImage()
  {
    setState(()
    {
      file = ImagePicker.pickImage(source: ImageSource.gallery);
    });
    // setStatus('');
  }

  Widget showImage()
  {
    return FutureBuilder<File>
    (
      future: file,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot)
      {
        if (snapshot.connectionState == ConnectionState.done && null != snapshot.data)
          {
          // tmpFile = snapshot.data;
          // base64Image = base64Encode(snapshot.data.readAsBytesSync());
          return LayoutBuilder
          (
            builder: (ctx, constraints)
            {
              return DottedBoxWithUploadButton
              (
                fileImage: FileImage(snapshot.data),
                constraints: constraints,
                onPress: chooseImage
              );
            }
          );
          
        } else if (null != snapshot.error)
        {
          return LayoutBuilder
          (
            builder: (ctx, constraints)
            {
              return DottedBoxWithUploadButton
              (
                text: 'Error selecting image',
                fileImage: null,
                constraints: constraints,
                onPress: chooseImage,
              );
            }
          );
        }
        else
        {
          return LayoutBuilder
          (
            builder: (ctx, constraints)
            {
              return DottedBoxWithUploadButton
              (
                fileImage: null,
                constraints: constraints,
                onPress: chooseImage,
              );
            }
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) 
  {
    return showImage();
  }
}