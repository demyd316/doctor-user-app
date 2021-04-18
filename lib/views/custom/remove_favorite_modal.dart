import 'package:flutter/material.dart';
class RemoveFavoriteModal extends StatefulWidget {
  // This is the widget of Menu Request Modal
  @override
  _RemoveFavoriteModalState createState() => _RemoveFavoriteModalState();
}

class _RemoveFavoriteModalState extends State<RemoveFavoriteModal> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text("Do you want to remove from favorites?"),
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