import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:paynav/auth.dart';

import 'package:paynav/router.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _formkey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  File image1;
  File image2;
  File image3;
  final firstNameController =TextEditingController();
  final middleNameController =TextEditingController();
  final surNameController =TextEditingController();
  final panCardNumberController =TextEditingController();
  final adharCardNumberController =TextEditingController();

  Future <void> _shoeAlert (BuildContext context){
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Please Enter all Details!', style: TextStyle(fontWeight: FontWeight.w800, color: Colors.redAccent),),
              ],
            )
        ),
      );
    });
  }

  Future <void> _showChoiceDialog1 (BuildContext context) {
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Make a Choice!",style: TextStyle(fontWeight: FontWeight.bold)),
        content: SingleChildScrollView(
          child: ListBody(children: <Widget>[
            GestureDetector(
              child: Text ("Gallery"),
              onTap: _getImage1,
            ),
            Divider(),
            GestureDetector(
              child: Text ("Camara"),
              onTap: _openCamara1,
            )
          ],),
        ),
      );
    });
  }
  Future <void> _showChoiceDialog2 (BuildContext context) {
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Make a Choice!",style: TextStyle(fontWeight: FontWeight.bold)),
        content: SingleChildScrollView(
          child: ListBody(children: <Widget>[
            GestureDetector(
              child: Text ("Gallery"),
              onTap: _getImage2,
            ),
            Divider(),
            GestureDetector(
              child: Text ("Camara"),
              onTap: _openCamara2,
            )
          ],),
        ),
      );
    });
  }
  Future <void> _showChoiceDialog3 (BuildContext context) {
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Make a Choice!",style: TextStyle(fontWeight: FontWeight.bold),),
        content: SingleChildScrollView(
          child: ListBody(children: <Widget>[
            GestureDetector(
              child: Text ("Gallery"),
              onTap: _getImage3,
            ),
            Divider(),
            GestureDetector(
              child: Text ("Camara"),
              onTap: _openCamara3,
            )
          ],),
        ),
      );
    });
  }

  Future _getImage1() async {
    var tempImage1 = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      image1 = tempImage1;
    });
    Navigator.of(context).pop();
  }
  Future _openCamara1() async {
    var tempImage1 = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      image1 = tempImage1;
    });
    Navigator.of(context).pop();
  }

  Future _getImage2() async {
    var tempImage2 = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      image2 = tempImage2;
    });
    Navigator.of(context).pop();
  }
  Future _openCamara2() async {
    var tempImage2 = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      image2 = tempImage2;
    });
    Navigator.of(context).pop();
  }

  Future _getImage3() async {
    var tempImage3 = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      image3 = tempImage3;
    });
    Navigator.of(context).pop();
  }
  Future _openCamara3() async {
    var tempImage3 = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      image3 = tempImage3;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('PayNav'),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          color: Colors.white10,
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
              //    onSaved: (value) => _firstName = value.trim(),
                  controller: firstNameController,
                  decoration: InputDecoration(
                  labelText: "First Name", hasFloatingPlaceholder: true,
                ),
              ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
                child: TextFormField(
                  controller: middleNameController,
                  decoration: InputDecoration(
                    labelText: "Middle Name", hasFloatingPlaceholder: true,
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
                child: TextFormField(
                  controller: surNameController,
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
                child: TextFormField(
                  validator: (value) =>
                  value.length != 10
                      ? "Enter valid Pan Number"
                      : null,
                  controller: panCardNumberController,
                  decoration: InputDecoration(
                    hintText: 'Enter Pan Number',
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
                  onTap: (){
                    _showChoiceDialog1(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 25),
                 child: Container(alignment: Alignment.topLeft,
                    child: Text('Photo Id Card (Required)')
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 25,),
                child: TextFormField(
                  validator: (value) =>
                  value.length != 12
                      ? "Enter valid Pan Number"
                      : null,
                  controller: adharCardNumberController,
                  decoration: InputDecoration(
                      hintText: 'Enter Aadhar Number',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              height: data.size.width * 0.28,
                              width: data.size.height * 0.21,
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
                            onTap: (){
                              _showChoiceDialog2(context);
                            },
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
                              width: data.size.height * 0.21,
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
                            onTap: (){
                              _showChoiceDialog3(context);
                            },
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
                        async {
                          if(_formkey.currentState.validate())
                          {
                            if (image1 != null && image3 != null &&
                                image2 != null) {
                              Navigator.pushNamed(context, paymntRoute);
                            } else {
                              _shoeAlert(context);
                            }
                            dynamic result = await _auth.signInAnon(
                              firstNameController.text,
                              middleNameController.text,
                              surNameController.text,
                              panCardNumberController.text,
                              adharCardNumberController.text,
                            );
                            if (result == null) {
                              print('Cant sign in');
                            }
                            else {
                              print('signed in');
                            }
                            //await DatabaseService(result).updateUserData('Ramesh', 'Arora', 'Bittu','1234','12341234');
                            final StorageReference firebaseStorageRef = FirebaseStorage
                                .instance.ref().child(firstNameController.text + ' PAN.png');
                            final StorageUploadTask task = firebaseStorageRef
                                .putFile(image1);
                            final StorageReference firebaseStorageRef2 = FirebaseStorage
                                .instance.ref().child(firstNameController.text + ' ADF.png');
                            final StorageUploadTask task2 = firebaseStorageRef2
                                .putFile(image2);
                            final StorageReference firebaseStorageRef3 = FirebaseStorage
                                .instance.ref().child(firstNameController.text + ' ADB.png');
                            final StorageUploadTask task3 = firebaseStorageRef3
                                .putFile(image3);
                          }
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


