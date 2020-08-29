import 'dart:developer';

import 'package:flutter/material.dart';

/// Wrapper for stateful functionality to provide onInit calls in stateles widget
class StatefulWrapper extends StatefulWidget {
  final Function onInit;
  final Function onDispose;
  final Widget child;

  const StatefulWrapper({@required this.onInit, @required this.child, @required this.onDispose});

  @override
  _StatefulWrapperState createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {
@override
  void initState() {
    if(widget.onInit != null) {
      widget.onInit();
    }
    super.initState();
  }

  @override
  void dispose() {
    if(widget.onDispose != null) {
      widget.onDispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}