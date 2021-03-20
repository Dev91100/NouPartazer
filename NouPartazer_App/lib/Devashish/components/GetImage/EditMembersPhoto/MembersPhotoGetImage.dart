import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:io';
// import 'dart:convert';

import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Devashish/components/GetImage/EditMembersPhoto/MembersPhotoWithEditButton.dart';

class MembersPhotoGetImage extends StatefulWidget
{
  final screen;
  final BoxConstraints constraints;

  MembersPhotoGetImage
  (
    {
      this.screen,
      this.constraints,
    }
  );

  @override
  _MembersPhotoGetImageState createState() => _MembersPhotoGetImageState();
}

class _MembersPhotoGetImageState extends State<MembersPhotoGetImage>
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

          return MembersPhotoWithEditButton
          (
            fileImage: FileImage(snapshot.data),
            onPress: chooseImage,
          );

        } else if (null != snapshot.error)
        {
          return MembersPhotoWithEditButton
          (
            fileImage: null,
            onPress: chooseImage,
          );

        }
        else
        {
          return MembersPhotoWithEditButton
          (
            fileImage: null,
            onPress: chooseImage,
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