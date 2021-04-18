import 'package:flutter/material.dart';
class RescheduleModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _RescheduleModalState createState() => _RescheduleModalState();
}

class _RescheduleModalState extends State<RescheduleModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Are you sure you want to reschedule?"),
      actions: <Widget>[
        FlatButton(
          child: Text("NO"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text("YES"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}