import 'package:flutter/material.dart';

class PaymntPage extends StatefulWidget {
  @override
  _PaymntPageState createState() => _PaymntPageState();
}

class _PaymntPageState extends State<PaymntPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 6, left: 12),
              child: Container(alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Text('Purpose of Payment',style: TextStyle(color: Colors.black45,fontSize: 16),),
                      SizedBox(width: data.size.width *0.3,),
                      Text('Change', style: TextStyle(color: Colors.lightBlueAccent,fontSize: 18),)
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 12),
              child: Container(alignment: Alignment.topLeft,
                  child: Text('PayNav Assignment',style: TextStyle(fontSize: 16))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 12),
              child: Container(alignment: Alignment.topLeft,
                  child: Text('Amount',style: TextStyle(color: Colors.black45,fontSize: 16),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 12),
              child: Container(alignment: Alignment.topLeft,
                  child: Text('# 100',style: TextStyle(fontSize: 16))
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 4,bottom: 4, left: 12),
              child: Container(alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Text('Your Details',style: TextStyle(color: Colors.black87,fontSize: 14),),
                      Icon(Icons.arrow_forward_ios,size: 15,),
                      Text('Payment',style: TextStyle(color: Colors.black87,fontSize: 14),),
                    ],
                  )
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 12),
              child: Container(alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Text('UPI',style: TextStyle(color: Colors.black45,fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(width: data.size.width *0.63,),
                      Text('Change', style: TextStyle(color: Colors.lightBlueAccent,fontSize: 18),)
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 12),
              child: Container(alignment: Alignment.topLeft,
                  child: Text('Select your UPI app',style: TextStyle(color: Colors.black45,fontSize: 16),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8,left: 12),
              child: Container(alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Text('Enter your UPI ID',style: TextStyle(color: Colors.black45,fontSize: 16),),
                      SizedBox(width: data.size.width *0.17,),
                      Text('How to find UPI ID?', style: TextStyle(color: Colors.lightBlueAccent,fontSize: 16),)
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: SizedBox(
                  width: data.size.width * 0.85,
                  height: data.size.width * 0.14,
                  child: RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.lightBlue,
                    splashColor: Colors.amber,
                    child: Text("VERIFY".toUpperCase(),
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8,left: 12),
              child: Container(alignment: Alignment.topLeft,
                  child: Text('How to pay using UPI?', style: TextStyle(color: Colors.lightBlueAccent,fontSize: 16),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 12),
              child: Container(alignment: Alignment.topCenter,
                  child: Text('By purchasing, you agree to our Terms & Privacy ',
                    style: TextStyle(color: Colors.black45,fontSize: 12, fontWeight: FontWeight.w800),
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: Row(children: <Widget>[
               Expanded(
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/rbi.png'),
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    ),
                  ),
                  height: data.size.width * .15,
                  width: data.size.width * .15,
                ),
              ),
               Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/mc.png'),
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    ),
                  ),
                  height: data.size.width * .15,
                  width: data.size.width * .2,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/pci.png'),
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    ),
                  ),
                  height: data.size.width * .2,
                  width: data.size.width * .2,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/visa.png'),
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    ),
                  ),
                  height: data.size.width * .15,
                  width: data.size.width * .2,
                ),
              ),
            ],),)
          ],),
        ),
      ),
    );
  }
}
