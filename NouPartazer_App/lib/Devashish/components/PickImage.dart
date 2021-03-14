// import 'dart:io';

// import 'package:image_picker/image_picker.dart';

// class PickImage
// {
//   File image;
//   final picker = ImagePicker();

//   Future getImage() async
//   {
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);

//     if (pickedFile != null)
//     {
//       image = File(pickedFile.path);
//       return image;
//     }
//   }

//   // @override
//   // Widget build(BuildContext context)
//   // {
//   //   return Scaffold
//   //   (
//   //     appBar: AppBar
//   //     (
//   //       title: Text('Image Picker Example'),
//   //     ),
//   //     body: Center
//   //     (
//   //       child: _image == null
//   //         ? Text('No image selected.')
//   //         : Image.file(_image),
//   //     ),
//   //     floatingActionButton: FloatingActionButton
//   //     (
//   //       onPressed: getImage,
//   //       tooltip: 'Pick Image',
//   //       child: Icon(Icons.add_a_photo),
//   //     ),
//   //   );
//   // }
// }