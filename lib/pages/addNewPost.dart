import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddNewPost extends StatefulWidget {

  @override
  _AddNewPost createState() => _AddNewPost();
}

class _AddNewPost extends State<AddNewPost> {

  File _imageName;

  _getFromCamera() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      _imageName = File(pickedFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('New Post'),
      ),
      body: Center(
          child: Container(
              child: _imageName == null ? Text('Image is not loaded') : Image.file(_imageName)
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getFromCamera,
        tooltip: 'Increment',
        child: Icon(Icons.camera_alt),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}