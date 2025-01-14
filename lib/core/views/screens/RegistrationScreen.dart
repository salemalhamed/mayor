import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _HomePageState();
}

class _HomePageState extends State<RegistrationScreen> {
  //TODO declare variables
  late ImagePicker imagePicker;
  File? _image;

  //TODO declare detector

  //TODO declare face recognizer

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

  //TODO perform Face Recognition

  //TODO Face Registration Dialogue
  // TextEditingController textEditingController = TextEditingController();
  // showFaceRegistrationDialogue(Uint8List cropedFace, Recognition recognition){
  //   showDialog(
  //     context: context,
  //     builder: (ctx) => AlertDialog(
  //       title: const Text("Face Registration",textAlign: TextAlign.center),alignment: Alignment.center,
  //       content: SizedBox(
  //         height: 340,
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: [
  //             const SizedBox(height: 20,),
  //             Image.memory(
  //               cropedFace,
  //               width: 200,
  //               height: 200,
  //             ),
  //             SizedBox(
  //               width: 200,
  //               child: TextField(
  //                 controller: textEditingController,
  //                   decoration: const InputDecoration( fillColor: Colors.white, filled: true,hintText: "Enter Name")
  //               ),
  //             ),
  //             const SizedBox(height: 10,),
  //             ElevatedButton(
  //                 onPressed: () {
  //                   recognizer.registerFaceInDB(textEditingController.text, recognition.embeddings);
  //                   textEditingController.text = "";
  //                   Navigator.pop(context);
  //                   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //                     content: Text("Face Registered"),
  //                   ));
  //                 },style: ElevatedButton.styleFrom(primary:Colors.blue,minimumSize: const Size(200,40)),
  //                 child: const Text("Register"))
  //           ],
  //         ),
  //       ),contentPadding: EdgeInsets.zero,
  //     ),
  //   );
  // }
  //TODO draw rectangles
  // var image;
  // drawRectangleAroundFaces() async {
  //   image = await _image?.readAsBytes();
  //   image = await decodeImageFromList(image);
  //   print("${image.width}   ${image.height}");
  //   setState(() {
  //     image;
  //     faces;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "المواصلة ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              _image != null
                  ? Container(
                      margin: const EdgeInsets.only(top: 50),
                      width: screenWidth - 50,
                      height: screenWidth - 50,
                      child: Image.file(_image!),
                    )
                  // Container(
                  //   margin: const EdgeInsets.only(
                  //       top: 60, left: 30, right: 30, bottom: 0),
                  //   child: FittedBox(
                  //     child: SizedBox(
                  //       width: image.width.toDouble(),
                  //       height: image.width.toDouble(),
                  //       child: CustomPaint(
                  //         painter: FacePainter(
                  //             facesList: faces, imageFile: image),
                  //       ),
                  //     ),
                  //   ),
                  // )
                  : Container(
                      height: 50,
                    ),

              //TODO section which displays buttons for choosing and capturing images
              Container(
                margin: const EdgeInsets.only(bottom: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      color: Color.fromARGB(255, 0, 136, 5),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/eve');
                        },
                        child: SizedBox(
                          width: screenWidth / 2 - 70,
                          height: screenWidth / 2 - 70,
                          child: Row(
                            children: [
                              Icon(Icons.person,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  size: screenWidth / 7),
                              Text(
                                "أفراد",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromARGB(255, 0, 136, 5),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/mayo');
                        },
                        child: SizedBox(
                          width: screenWidth / 2 - 70,
                          height: screenWidth / 2 - 70,
                          child: Row(
                            children: [
                              Icon(Icons.person_4,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  size: screenWidth / 7),
                              Text(
                                "عمدة-حي",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class FacePainter extends CustomPainter {
//   List<Face> facesList;
//   dynamic imageFile;
//   FacePainter({required this.facesList, @required this.imageFile});
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     if (imageFile != null) {
//       canvas.drawImage(imageFile, Offset.zero, Paint());
//     }
//
//     Paint p = Paint();
//     p.color = Colors.red;
//     p.style = PaintingStyle.stroke;
//     p.strokeWidth = 3;
//
//     for (Face face in facesList) {
//       canvas.drawRect(face.boundingBox, p);
//     }
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
