import 'package:flutter/material.dart';

class Choices extends StatelessWidget {
  final Function response;
  final String label;

  Choices({this.label, this.response});
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.only(left: 10, right: 10),
      width: double.infinity, //be as big as possible
      child: RaisedButton(
        child: Text(label),
        onPressed: response,
      ),
    );
  }
}
