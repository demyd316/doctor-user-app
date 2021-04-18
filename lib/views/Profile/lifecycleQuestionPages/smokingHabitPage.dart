import 'package:flutter/material.dart';

class SmokingHabitPage extends StatefulWidget {
  @override
  _SmokingHabitPageState createState() => _SmokingHabitPageState();
}

class _SmokingHabitPageState extends State<SmokingHabitPage> {
  String smokeValue;
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
            child: Text('How many cigarettes do you smoke per day?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
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
                          smokeValue = "noSmoke";
                        });
                      },
                      child: Text("I don't smoke", style: TextStyle(color: smokeValue == "noSmoke" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: smokeValue == "noSmoke" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          smokeValue = "quit";
                        });
                      },
                      child: Text("I used to, but I've quit", style: TextStyle(color: smokeValue == "quit" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: smokeValue == "quit" ? Color(0xff16bdf1) : Colors.transparent,
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
                          smokeValue = "oneOrTwo";
                        });
                      },
                      child: Text("1-2/day", style: TextStyle(color: smokeValue == "oneOrTwo" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: smokeValue == "oneOrTwo" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          smokeValue = "threeOrFive";
                        });
                      },
                      child: Text("3-5/day", style: TextStyle(color: smokeValue == "threeOrFive" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: smokeValue == "threeOrFive" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          smokeValue = "fiveOrTen";
                        });
                      },
                      child: Text("5-10/day", style: TextStyle(color: smokeValue == "fiveOrTen" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: smokeValue == "fiveOrTen" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          smokeValue = "moreTen";
                        });
                      },
                      child: Text(">10/day", style: TextStyle(color: smokeValue == "moreTen" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: smokeValue == "moreTen" ? Color(0xff16bdf1) : Colors.transparent,
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