import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;

class EventDetelsScreen extends StatefulWidget {
  @override
  State<EventDetelsScreen> createState() => _EventDetelsScreenState();
}

class _EventDetelsScreenState extends State<EventDetelsScreen> {
  late ImagePicker imagePicker;
  File? _image;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imagePicker = ImagePicker();

    //TODO initialize face detector

    //TODO initialize face recognizer
  }

  //TODO capture image using camera
  _imgFromCamera() async {
    XFile? pickedFile = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
        doFaceDetection();
      });
    }
  }

  //TODO choose image using gallery
  _imgFromGallery() async {
    XFile? pickedFile =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
        doFaceDetection();
      });
    }
  }

  //TODO face detection code here

  doFaceDetection() async {
    //TODO remove rotation of camera images

    //TODO passing input to face detector and getting detected faces

    //TODO call the method to perform face recognition on detected faces
  }

  //TODO remove rotation of camera images
  removeRotation(File inputImage) async {
    final img.Image? capturedImage =
        img.decodeImage(await File(inputImage!.path).readAsBytes());
    final img.Image orientedImage = img.bakeOrientation(capturedImage!);
    return await File(_image!.path).writeAsBytes(img.encodeJpg(orientedImage));
  }

  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
            child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          height: 250,
                          width: 400,
                          child: Image.asset("assets/images/s1.png",
                              fit: BoxFit.fill)),
                      Positioned(
                          child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromARGB(255, 255, 255, 255).withOpacity(0),
                              Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                            ],
                          ),
                        ),
                        height: 250,
                        width: double.infinity,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "البلاغات",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    "الى عمدة",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "الرياض - حي النسيم الغربي",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                  ),
                  Text(
                    "الوثائق:",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  _image != null
                      ? Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 100,
                          height: 100,
                          child: Image.file(_image!),
                        )
                      : Container(
                          height: 50,
                        ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ... Existing code for the image display ...

                      SizedBox(height: 10),

                      SizedBox(height: 10),

                      // First TextFormField for title
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "العنوان",
                          border: OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      // Second TextFormField for multiline input
                      TextFormField(
                        maxLines: 20,
                        decoration: InputDecoration(
                          labelText: "التفاصيل",
                          border: OutlineInputBorder(),
                        ),
                      ),

                      SizedBox(height: 10),

                      // Placeholder for image choice (you can add your implementation here)
                      // ...
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/con');
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            "ارسال",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          )),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 136, 5),
                              border: Border.all(
                                width: 2,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Card(
                              color: Color.fromARGB(255, 0, 136, 5),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: InkWell(
                                onTap: () {
                                  _imgFromCamera();
                                },
                                child: SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: Icon(Icons.camera,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      size: 30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        )));
  }
}
