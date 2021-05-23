import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class MonitorCardWidget extends StatefulWidget {
  MonitorCardWidget({Key key}) : super(key: key);

  @override
  _MonitorCardWidgetState createState() => _MonitorCardWidgetState();
}

class _MonitorCardWidgetState extends State<MonitorCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Color(0xFFFF0000),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [],
        ),
      ),
    );
  }
}
