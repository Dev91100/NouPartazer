import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'dart:convert';
import 'package:crypto/crypto.dart';

import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:path/path.dart' as p;
import 'package:image_picker/image_picker.dart';

import 'package:noupartazer_app/Devashish/components/GetImage/BannerPhoto/BannerPhotoWithEditButton.dart';

class BannerPhotoGetImage extends StatefulWidget
{
  final screen;
  final bool isEditable;
  final BoxConstraints constraints;
  var photo;

  BannerPhotoGetImage
  (
    {
      this.photo,
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
        widget.photo = null;
      }
    });

    uploadImage();

  }

  Future uploadImage() async
  {
    final uri = Uri.parse("https://foodsharingapp.000webhostapp.com/UploadImage.php");
    
    var request = http.MultipartRequest('POST', uri);
    request.fields['name'] = md5.convert(utf8.encode(DateTime.now().toString())).toString() + imageExtension;

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
    if (pickedImage != null || widget.photo != null)
    {
      
      return BannerPhotoWithEditButton
      (
        fileImage: (widget.photo != null) ? FileImage(File(widget.photo)) : FileImage(File(pickedImage.path)),
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
  }

  @override
  Widget build(BuildContext context) 
  {
    return showImage();
  }
}