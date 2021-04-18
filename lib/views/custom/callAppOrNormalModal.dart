import 'package:doctorgo_doctor/views/authentication/SignInPage.dart';
import 'package:doctorgo_doctor/views/laboratory_at_home/laboratory_adult.dart';
import 'package:flutter/material.dart';
class CallAppOrNormalModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _CallAppOrNormalModalState createState() => _CallAppOrNormalModalState();
}

class _CallAppOrNormalModalState extends State<CallAppOrNormalModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Do you want to call for the app or normal call?"),
      actions: <Widget>[
        FlatButton(
          child: Text("Call for the app"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FlatButton(
          child: Text("Normal"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}