import 'package:doctorgo_doctor/views/tabs/Tabs.dart';
import 'package:flutter/material.dart';
class ScheduleCancelModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _ScheduleCancelModalState createState() => _ScheduleCancelModalState();
}

class _ScheduleCancelModalState extends State<ScheduleCancelModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Are you sure you want to delete the quote?"),
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => TabsPage()),
            );
          },
        ),
      ],
    );
  }
}