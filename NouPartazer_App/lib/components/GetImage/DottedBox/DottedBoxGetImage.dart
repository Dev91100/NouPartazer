import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

import 'package:noupartazer_app/components/GetImage/DottedBox/DottedBoxWithUploadButton.dart';

class DottedBoxGetImage extends StatefulWidget
{
  @override
  _DottedBoxGetImageState createState() => _DottedBoxGetImageState();
}

class _DottedBoxGetImageState extends State<DottedBoxGetImage>
{
  File _image;
  final picker = ImagePicker();
  var pickedImage;
  var imageExtension;

  Future chooseImage() async
  {
    pickedImage = await picker.getImage(source: ImageSource.gallery);

    setState(()
    {
      if(pickedImage != null)
      {
        _image = File(pickedImage.path);
        imageExtension = p.extension(pickedImage.path);
      }
    });

    uploadImage();

  }

  Future uploadImage() async
  {
    final uri = Uri.parse("https://foodsharingapp.000webhostapp.com/UploadImage.php");
    
    var request = http.MultipartRequest('POST', uri);

    request.fields['name']        = md5.convert(utf8.encode(DateTime.now().toString())).toString() + imageExtension;
    request.fields['org']         = 'business' + '/';
    request.fields['orgID']       = 'bus1234' + '/';
    request.fields['folderType']  = 'tmp' + '/';
    request.fields['deletePhoto'] = 'true';

    var photo = await http.MultipartFile.fromPath("image", _image.path);
    request.files.add(photo);
    
    var response = await request.send();

    if(response.statusCode == 200)
    {
      print("Image uploaded");
    }
    else
    {
      print("Image Not Uploaded");
    }
  }

  Widget showImage()
  {
    if (pickedImage != null)
    {
      return LayoutBuilder
      (
        builder: (ctx, constraints)
        {
          return DottedBoxWithUploadButton
          (
            fileImage: FileImage(File(pickedImage.path)),
            constraints: constraints,
            onPress: chooseImage
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
  }
    
  @override
  Widget build(BuildContext context) 
  {
    return showImage();
  }
}