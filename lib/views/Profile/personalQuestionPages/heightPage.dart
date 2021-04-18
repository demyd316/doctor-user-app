import 'package:numberpicker/numberpicker.dart';
import 'package:flutter/material.dart';

class HeightPage extends StatefulWidget {
  @override
  _HeightPageState createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {

  int feetValue;
  int inchValue;

  @override
  void initState() {
    feetValue = 1;
    inchValue = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.6,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text('What is your height?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),)
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
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
          ),

          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  NumberPicker.integer(
                    initialValue: feetValue,
                    minValue: 1,
                    maxValue: 100,
                    onChanged: (newValue){
                      setState(() {
                        feetValue = newValue;
                      });
                    }
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text("feet", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                  ),

                  NumberPicker.integer(
                    initialValue: inchValue,
                    minValue: 1,
                    maxValue: 100,
                    onChanged: (newValue){
                      setState(() {
                        inchValue = newValue;
                      });
                    }
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text("inches", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xffe3e9f7),
                borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))
              ),
            ),
          ),
        ],
      );
  }
}