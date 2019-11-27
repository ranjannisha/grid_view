import 'package:flutter/material.dart';

class Contact extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Contact> {

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text('CONTACT US',style: TextStyle(fontSize: 18.0,color: Colors.white)),
        //   centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child:new Text('Contact Us ', style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,)
        ),
      ),
    );
  }
}
