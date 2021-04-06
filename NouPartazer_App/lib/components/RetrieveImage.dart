import 'package:flutter/material.dart';
import 'dart:io';

class RetrieveImage
{
  final file;
  final widget1;
  final widget2;
  final widget3;
  final onButtonPress;

  RetrieveImage
  (
    {
      this.file,
      this.widget1,
      this.widget2,
      this.widget3,
      this.onButtonPress,
    }
  );

  getCallback()
  {
    return () => onButtonPress();
  }

  FutureBuilder displayImage()
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
        return widget1;
        }
        else if (null != snapshot.error)
        {
          return widget2;
        }
        else
        {
          return widget3;
        }
      },
    );
  }
}