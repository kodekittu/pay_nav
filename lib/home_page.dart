import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:http/http.dart'  as http;
import 'package:paynav/router.dart';

import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  File image1;
  File image2;
  File image3;

  Future getImage() async {
    var tempImage1 = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      image1 = tempImage1;
    });
  }

  Future getImage2() async {
    var tempImage2 = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      image2 = tempImage2;
    });
  }

  Future getImage3() async {
    var tempImage3 = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      image3 = tempImage3;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('PayNav'),
      ),
      body: Container(
        color: Colors.black12,
        padding: EdgeInsets.all(6),
        child: SingleChildScrollView(padding: EdgeInsets.all(4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Center(child: Text('PayNav ASSIGNMENT',style: TextStyle(fontWeight: FontWeight.bold),),),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 25),
              child: Container(alignment: Alignment.topLeft,
                  child: Text('Please enter name as per Pancard',)
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25,),
              child: TextFormField(
               maxLines: 1,
                validator: (value) => value.isEmpty ? "First Name can't be empty" : null,
             //   onSaved: (value) => _first = value.trim(),
                decoration: InputDecoration(
                labelText: "First Name", hasFloatingPlaceholder: true,
              ),
            ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Middle Name", hasFloatingPlaceholder: true,
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Sur Name", hasFloatingPlaceholder: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 25),
              child: Container(alignment: Alignment.topLeft,
                  child: Text('Pan Card (Required)')
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25,),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Pan Number'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                child: Container(
                  height: data.size.width * 0.28,
                  width: data.size.height * 0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 2)
                  ),
                  child: Center(child:
                        image1 == null
                      ? Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                        child: Column(children: <Widget>[
                        Icon(Icons.add_circle_outline),
                        Text('UPLOAD PHOTO')
                    ],
                  ),
                      ) : enableUpload(),),
                ),
                onTap: getImage,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 25),
               child: Container(alignment: Alignment.topLeft,
                  child: Text('Photo Id Card (Required)')
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25,),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Aadhar Number'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            height: data.size.width * 0.28,
                            width: data.size.height * 0.23,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey, width: 2)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Center(child: image2 == null ?
                              Column(
                                children: <Widget>[
                                  Icon(Icons.add_circle_outline),
                                  Text('UPLOAD PHOTO')
                                ],
                              )
                                  : enableUpload2(),),
                            ),
                          ),
                          onTap: getImage2,
                        ),
                        SizedBox(height: data.size.height *0.01,),
                        Text('FRONT'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            height: data.size.width * 0.28,
                            width: data.size.height * 0.23,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey, width: 2)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Center(child: image3 == null ? Column(
                                children: <Widget>[
                                  Icon(Icons.add_circle_outline),
                                  Text('UPLOAD PHOTO')
                                ],
                              ) : enableUpload3(),),
                            ),
                          ),
                          onTap: getImage3,
                        ),
                        SizedBox(height: data.size.height *0.01,),
                        Text('BACK'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  width: data.size.width * 0.55,
                  child: RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.purpleAccent,
                    splashColor: Colors.amber,
                    child: Text("SUBMIT".toUpperCase(),
                      style: TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    onPressed: () // => Navigator.pushNamed(context, paymntRoute),
                      {
                        Navigator.pushNamed(context, paymntRoute);
                        final StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child('img.png');
                        final StorageUploadTask task = firebaseStorageRef.putFile(image1);
                        final StorageReference firebaseStorageRef2 = FirebaseStorage.instance.ref().child('img2.png');
                        final StorageUploadTask task2 = firebaseStorageRef2.putFile(image2);
                        final StorageReference firebaseStorageRef3 = FirebaseStorage.instance.ref().child('img3.png');
                        final StorageUploadTask task3 = firebaseStorageRef3.putFile(image3);
                      },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                  ),
                ),
              ),
            )
          ],),
        ),
      ),
    );
  }

  Widget enableUpload(){
    return Container(child: Image.file(image1),
    );
  }
  Widget enableUpload2(){
    return Container(child: Image.file(image2),
    );
  }
  Widget enableUpload3(){
    return Container(child: Image.file(image3),
    );
  }
  
}

