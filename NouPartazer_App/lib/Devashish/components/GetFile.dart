import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:convert';
import 'package:NouPartazer_App/Devashish/components/DottedBoxWithUploadButton.dart';
import 'package:NouPartazer_App/Devashish/components/RetrieveImage.dart';

class GetFile extends StatefulWidget
{
  Future<File> file;
  final Widget widget1;
  final Widget widget2;
  final Widget widget3;
  

  GetFile
  (
    {
      this.file,
      this.widget1,
      this.widget2,
      this.widget3,
    }
  );

  @override
  _GetFileState createState() => _GetFileState();
}

class _GetFileState extends State<GetFile>
{
  
  // String status = '';
  // String base64Image;
  // File tmpFile;
  // String errMessage = 'Error Uploading Image';

  chooseImage()
  {
    setState(()
    {
      widget.file = ImagePicker.pickImage(source: ImageSource.gallery);
    });
    // setStatus('');
  }

  Widget showImage()
  {
    var retrieveImage = RetrieveImage
    (
      file: widget.file,
      widget1: widget.widget1,
      widget2: widget.widget2,
      widget3: widget.widget3,
      onButtonPress: () => chooseImage(),
    );
    return retrieveImage.displayImage();
  }

  @override
  Widget build(BuildContext context) 
  {
    return showImage();
  }
}