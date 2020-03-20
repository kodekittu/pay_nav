import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('PayNav'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(padding: EdgeInsets.all(8),
          child: Column(children: <Widget>[
            Center(child: Text('PayNav ASSIGNMENT'),),
            Text('Please enter name as per Pancard'),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "First Name", hasFloatingPlaceholder: true,
              ),
            ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Middle Name", hasFloatingPlaceholder: true,
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Sur Name", hasFloatingPlaceholder: true,
                ),
              ),
            ),

          ],),
        ),
      ),
    );
  }
}
