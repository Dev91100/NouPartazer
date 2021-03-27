import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

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