import 'package:flutter/material.dart';

class MarriedPage extends StatefulWidget {
  @override
  _MarriedPageState createState() => _MarriedPageState();
}

class _MarriedPageState extends State<MarriedPage> {
  String marriedValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text('Are you married?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 40,
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      marriedValue = "single";
                    });
                  },
                  child: Text("SINGLE", style: TextStyle(color: marriedValue == "single" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                ),
                decoration: BoxDecoration(
                  color: marriedValue == "single" ? Color(0xff16bdf1) : Colors.transparent,
                  border: Border.all(width: 0.8, color: Colors.grey)
                ),
              ),

              Container(
                height: 40,
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      marriedValue = "married";
                    });
                  },
                  child: Text("MARRIED", style: TextStyle(color: marriedValue == "married" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                ),
                decoration: BoxDecoration(
                  color: marriedValue == "married" ? Color(0xff16bdf1) : Colors.transparent,
                  border: Border.all(width: 0.8, color: Colors.grey)
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}