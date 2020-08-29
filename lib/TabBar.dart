import 'package:flutter/material.dart';

class TabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              color: Colors.greenAccent[200],
              tooltip: "Home",
              onPressed: null),
          IconButton(
              icon: Icon(Icons.home),
              color: Colors.greenAccent[200],
              tooltip: "Home",
              onPressed: null),
        ],
      ),
    );
  }
}
