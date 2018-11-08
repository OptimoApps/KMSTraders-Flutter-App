import 'package:flutter/material.dart';

class FullDialog extends StatelessWidget {
  FullDialog({this.title, this.specification});

  final String title;
  final Table specification;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text(title)),
      body: Container(
        child: specification,
        padding: EdgeInsets.all(5.0),
      ),
    );
  }
}
