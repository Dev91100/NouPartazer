import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import 'package:noupartazer_app/Devashish/components/GetImage/ProfilePhoto/ProfilePhotoWithEditButton.dart';

class ProfilePhotoGetImage extends StatefulWidget
{
  final BoxConstraints constraints;
  final bool isEditable;

  ProfilePhotoGetImage
  (
    {
      this.isEditable = false,
      this.constraints,
    }
  );

  @override
  _ProfilePhotoGetImageState createState() => _ProfilePhotoGetImageState();
}

class _ProfilePhotoGetImageState extends State<ProfilePhotoGetImage>
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
          // tmpFile = snapshot.data;
          // base64Image = base64Encode(snapshot.data.readAsBytesSync());

          return ProfilePhotoWithEditButton
          (
            fileImage: FileImage(snapshot.data),
            isEditable: widget.isEditable,
            constraints: widget.constraints,
            onPress: chooseImage,
          );

        } else if (null != snapshot.error)
        {
          return ProfilePhotoWithEditButton
          (
            fileImage: null,
            isEditable: widget.isEditable,
            constraints: widget.constraints,
            onPress: chooseImage,
          );

        }
        else
        {
          return ProfilePhotoWithEditButton
          (
            fileImage: null,
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