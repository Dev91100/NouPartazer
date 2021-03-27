import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Devashish/components/GetImage/DottedBox/DottedBoxWithUploadButton.dart';

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

  Future chooseImage() async
  {
    pickedImage = await picker.getImage(source: ImageSource.gallery);
    
    setState(()
    {
      _image = File(pickedImage.path);
    });

    uploadImage();

  }

  Future uploadImage() async
  {
    final uri = Uri.parse("https://foodsharingapp.000webhostapp.com/UploadImage.php");
    var request = http.MultipartRequest('POST', uri);
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
    return FutureBuilder<File>
    (
      future: pickedImage,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot)
      {
        if (snapshot.connectionState == ConnectionState.done && null != snapshot.data)
        {
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