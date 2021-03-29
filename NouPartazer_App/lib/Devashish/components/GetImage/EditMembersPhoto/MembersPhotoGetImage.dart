import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:io';

import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

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
    request.fields['org']         = 'ngo' + '/';
    request.fields['orgID']       = 'reg1234' + '/';
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
      return MembersPhotoWithEditButton
      (
        fileImage: FileImage(File(pickedImage.path)),
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
  }

  @override
  Widget build(BuildContext context) 
  {
    return showImage();
  }
}