// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';
//
// void main() => runApp(ImageCropAndGet());
//
// class ImageCropAndGet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Pick and Crop',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   File _image;
//   Future takePhoto(context) async {
//     File image = await ImagePicker.pickImage(
//         source: ImageSource.gallery, imageQuality: 45);
//     if (image != null) {
//       File croppedFile = await cropImage(image);
//       setState(() {
//         _image = croppedFile;
//       });
//     }
//   }
//
//   Future pickCamera(context) async {
//     File image = await ImagePicker.pickImage(
//         source: ImageSource.camera, imageQuality: 45);
//     if (image != null) {
//       File croppedFile = await cropImage(image);
//       setState(() {
//         _image = croppedFile;
//       });
//     }
//   }
//
//   Future<File> cropImage(File image) async {
//     File croppedFile = await ImageCropper.cropImage(
//       aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0),
//       sourcePath: image.path,
//       maxWidth: 512,
//       maxHeight: 512,
//     );
//     return croppedFile;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Pick and Crop Image"),
//         centerTitle: true,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           _image != null
//               ? Container(
//             child: Image.file(
//               _image,
//               fit: BoxFit.fill,
//             ),
//           )
//               : Container(),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               IconButton(
//                   onPressed: () {
//                     _settingModalBottomSheet(context);
//                   },
//                   icon: Icon(Icons.image)),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _settingModalBottomSheet(context) {
//     showModalBottomSheet(
//         context: context,
//         builder: (BuildContext bc) {
//           return Container(
//             child: new Wrap(
//               children: <Widget>[
//                 new ListTile(
//                     leading: new Icon(Icons.camera),
//                     title: new Text('Camera '),
//                     onTap: () {
//                       pickCamera(context);
//                     }),
//                 new ListTile(
//                   leading: new Icon(Icons.image),
//                   title: new Text('Gallery'),
//                   onTap: () {
//                     takePhoto(context);
//                   },
//                 ),
//               ],
//             ),
//           );
//         });
//   }
// }
