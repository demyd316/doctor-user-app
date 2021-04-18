import 'package:flutter/material.dart';

class InsurancePolicyNumber extends StatefulWidget {
  @override
  _InsurancePolicyNumberState createState() => _InsurancePolicyNumberState();
}

class _InsurancePolicyNumberState extends State<InsurancePolicyNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('What is your insurance policy number?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
            TextFormField(
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.cancel, color: Color(0xff959ac9),),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff2d79e6),
            Color(0xff053476)
          ],
          stops: [0.0, 1.0],
        ),
      ),
    ); 
  }
}