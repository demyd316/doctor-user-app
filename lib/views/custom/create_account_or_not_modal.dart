import 'package:doctorgo_doctor/views/authentication/SignInPage.dart';
import 'package:doctorgo_doctor/views/laboratory_at_home/laboratory_adult.dart';
import 'package:flutter/material.dart';
class CreatAccountOrNotModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _CreatAccountOrNotModalState createState() => _CreatAccountOrNotModalState();
}

class _CreatAccountOrNotModalState extends State<CreatAccountOrNotModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Are you sure you want to create a new account?"),
      actions: <Widget>[
        FlatButton(
          child: Text("NO"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => LaboratoryAdult()),
            );
          },
        ),
        FlatButton(
          child: Text("YES"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => SignInPage()),
            );
          },
        ),
      ],
    );
  }
}