import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Administration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(
          'Administration', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.blue[300],
        elevation: 10.0,
      ),
    );
  }
}