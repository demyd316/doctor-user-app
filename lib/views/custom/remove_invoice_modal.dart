import 'package:flutter/material.dart';
class RemoveInvoiceModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _RemoveInvoiceModalState createState() => _RemoveInvoiceModalState();
}

class _RemoveInvoiceModalState extends State<RemoveInvoiceModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Would you like to remove this pre-invoice? (you will not be able to recover)"),
      actions: <Widget>[
        FlatButton(
          child: Text("NO"),
          onPressed: () {
            // TODO
          },
        ),
        FlatButton(
          child: Text("YES"),
          onPressed: () {
            // TODO
          },
        ),
      ],
    );
  }
}