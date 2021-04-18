import 'package:flutter/material.dart';

class LifeStyleActivePage extends StatefulWidget {
  @override
  _LifeStyleActivePageState createState() => _LifeStyleActivePageState();
}

class _LifeStyleActivePageState extends State<LifeStyleActivePage> {
  String lifeStyleValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Center(
            child: Text('How active is your lifestyle?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          lifeStyleValue = "low";
                        });
                      },
                      child: Text("Sedentary(low)", style: TextStyle(color: lifeStyleValue == "low" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: lifeStyleValue == "low" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          lifeStyleValue = "normal";
                        });
                      },
                      child: Text("Moderately active (normal)", style: TextStyle(color: lifeStyleValue == "normal" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: lifeStyleValue == "normal" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          lifeStyleValue = "high";
                        });
                      },
                      child: Text("Active (high)", style: TextStyle(color: lifeStyleValue == "high" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: lifeStyleValue == "high" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          lifeStyleValue = "veryHigh";
                        });
                      },
                      child: Text("Athletic (very high)", style: TextStyle(color: lifeStyleValue == "veryHigh" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: lifeStyleValue == "veryHigh" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}