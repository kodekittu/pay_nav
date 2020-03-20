import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:paynav/router.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('PayNav'),
      ),
      body: Container(
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
            child: TextField(
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
              child: Container(
                height: data.size.width * 0.25,
                width: data.size.height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 2)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(child: Column(children: <Widget>[
                    Icon(Icons.add_circle_outline),
                    Text('UPLOAD PHOTO')
                  ],),),
                ),
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
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: data.size.width * 0.25,
                          width: data.size.height * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 2)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Center(child: Column(children: <Widget>[
                              Icon(Icons.add_circle_outline),
                              Text('UPLOAD PHOTO')
                            ],),),
                          ),
                        ),
                        SizedBox(height: data.size.height *0.01,),
                        Text('FRONT'),
                      ],
                    ),
                  ),
                  SizedBox(width: data.size.width * 0.02,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: data.size.width * 0.25,
                          width: data.size.height * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 2)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Center(child: Column(children: <Widget>[
                              Icon(Icons.add_circle_outline),
                              Text('UPLOAD PHOTO')
                            ],),),
                          ),
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
                    onPressed: () => Navigator.pushNamed(context, paymntRoute),
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
}
