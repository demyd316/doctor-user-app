import 'package:numberpicker/numberpicker.dart';
import 'package:flutter/material.dart';

class WeightPage extends StatefulWidget {
  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {

  int weightValue;

  @override
  void initState() {
    weightValue = 1;
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
            child: Text('How much do you weigh? (in kgs)', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),)
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
            height: MediaQuery.of(context).size.height*0.25,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                NumberPicker.horizontal(
                  initialValue: weightValue,
                  minValue: 1,
                  maxValue: 200,
                  onChanged: (newValue){
                    setState(() {
                      weightValue = newValue;
                    });
                  }
                ),
                Text("Kg(s)", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
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