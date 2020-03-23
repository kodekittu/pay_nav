import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('List of ....'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(6),
        child: Container(child: ListView.builder(
          itemCount: 20,
        padding: EdgeInsets.all(10),
        itemBuilder: (BuildContext contest, int index){
          return Card(
            color: Colors.white12,
            elevation: 10,
            child: Container(
              height: data.size.height * 0.042,
              margin: EdgeInsets.only(left: 10),
            ),
          );
        }

        ),
        ),
        ),
      ),
    );
  }
}