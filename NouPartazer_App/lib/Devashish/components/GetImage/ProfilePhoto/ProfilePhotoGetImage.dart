import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:io';
// import 'dart:convert';

import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Devashish/components/GetImage/ProfilePhoto/ProfilePhotoWithEditButton.dart';

class ProfilePhotoGetImage extends StatefulWidget
{
  final BoxConstraints constraints;

  ProfilePhotoGetImage
  (
    {
      this.constraints,
    }
  );

  @override
  _ProfilePhotoGetImageState createState() => _ProfilePhotoGetImageState();
}

class _ProfilePhotoGetImageState extends State<ProfilePhotoGetImage>
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

          return ProfilePhotoWithEditButton
          (
            fileImage: FileImage(snapshot.data),
            constraints: widget.constraints,
            onPress: chooseImage,
          );

        } else if (null != snapshot.error)
        {
          return ProfilePhotoWithEditButton
          (
            fileImage: null,
            constraints: widget.constraints,
            onPress: chooseImage,
          );

        }
        else
        {
          return ProfilePhotoWithEditButton
          (
            fileImage: null,
            constraints: widget.constraints,
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