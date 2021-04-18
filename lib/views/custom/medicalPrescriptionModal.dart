import 'package:doctorgo_doctor/views/authentication/AccountInformation.dart';
import 'package:doctorgo_doctor/views/laboratory_at_home/laboratory_adult.dart';
import 'package:flutter/material.dart';
class MedicalPrescriptionModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _MedicalPrescriptionModalState createState() => _MedicalPrescriptionModalState();
}

class _MedicalPrescriptionModalState extends State<MedicalPrescriptionModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Please attach a medical prescription\nwith an electornic signature"),
      actions: <Widget>[
        FlatButton(
          child: Text("OK"),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (_) => AccountInformation()),
            // );
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}