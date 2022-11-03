import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class HomeUi extends StatefulWidget {
  const HomeUi({Key? key}) : super(key: key);

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  //image
  late File imageFile = File("");

  final picker = ImagePicker();

  List _outPutImage = [];

  @override
  Widget build(BuildContext context) {
    //screen size
    double kWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Cat & Dog',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Center(
          child: SizedBox(
            width: kWidth - 50,
            height: 300,
            child: Image.network(
                'https://media.istockphoto.com/vectors/corgi-and-cat-cute-pets-vector-id1327653663?b=1&k=20&m=1327653663&s=612x612&w=0&h=2nWUsmrxbCv4AmhJcMzGjrDg7FK63GT6yO39lRhzG4E='),
          ),
        ),
        const SizedBox(height: 100),
        SizedBox(
          width: kWidth - 50,
          height: 45,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
            onPressed: () async {
              final pickedFile = await ImagePicker.platform.pickImage(
                  source: ImageSource.gallery,
                  imageQuality: 40,
                  maxHeight: 200,
                  maxWidth: 200);
              if (pickedFile != null) {
                setState(() {
                  imageFile = File(pickedFile.path);
                });
              }
            },
            child: const Text(
              'From Gallery',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: kWidth - 50,
          height: 45,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
            onPressed: () async {
              final pickedFile = await ImagePicker.platform.pickImage(
                  source: ImageSource.camera,
                  imageQuality: 40,
                  maxHeight: 200,
                  maxWidth: 200);
              if (pickedFile != null) {
                setState(() {
                  imageFile = File(pickedFile.path);
                });
              }
            },
            child: const Text(
              'Camara Roll',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        imageFile.path.length > 10
            ? Image.file(
                imageFile,
                height: 100,
              )
            : Container(),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
  classifyImage(File outImage)async{
    var outputImage = await

  }
}
