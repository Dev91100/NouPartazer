import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:io';
// import 'dart:convert';

import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Devashish/components/GetImage/BannerPhoto/BannerPhotoWithEditButton.dart';

class BannerPhotoGetImage extends StatefulWidget
{
  final screen;
  final bool isEditable;
  final BoxConstraints constraints;

  BannerPhotoGetImage
  (
    {
      this.screen,
      this.isEditable = false,
      this.constraints,
    }
  );

  @override
  _BannerPhotoGetImageState createState() => _BannerPhotoGetImageState();
}

class _BannerPhotoGetImageState extends State<BannerPhotoGetImage>
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

          return BannerPhotoWithEditButton
          (
            fileImage: FileImage(snapshot.data),
            screen: widget.screen,
            isEditable: widget.isEditable,
            constraints: widget.constraints,
            onPress: chooseImage,
          );

        } else if (null != snapshot.error)
        {
          return BannerPhotoWithEditButton
          (
            fileImage: null,
            screen: widget.screen,
            isEditable: widget.isEditable,
            constraints: widget.constraints,
            onPress: chooseImage,
          );

        }
        else
        {
          return BannerPhotoWithEditButton
          (
            fileImage: null,
            screen: widget.screen,
            isEditable: widget.isEditable,
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