import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of ....'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(6),
        child: Container(child: ListView.builder(
        //    itemBuilder: 10,

        ),
        ),
        ),
      ),
    );
  }
}