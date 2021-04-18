import 'package:flutter/material.dart';

class AlcoholPage extends StatefulWidget {
  @override
  _AlcoholPageState createState() => _AlcoholPageState();
}

class _AlcoholPageState extends State<AlcoholPage> {
  String alcoholValue;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Center(
            child: Text('How frequently do you consume alcohol?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
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
                          alcoholValue = "noDrink";
                        });
                      },
                      child: Text("Non-drinker", style: TextStyle(color: alcoholValue == "noDrink" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: alcoholValue == "noDrink" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          alcoholValue = "rare";
                        });
                      },
                      child: Text("Rare", style: TextStyle(color: alcoholValue == "rare" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: alcoholValue == "rare" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          alcoholValue = "social";
                        });
                      },
                      child: Text("Social", style: TextStyle(color: alcoholValue == "social" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: alcoholValue == "social" ? Color(0xff16bdf1) : Colors.transparent,
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
                          alcoholValue = "regular";
                        });
                      },
                      child: Text("Regular", style: TextStyle(color: alcoholValue == "regular" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: alcoholValue == "regular" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          alcoholValue = "heavy";
                        });
                      },
                      child: Text("Heavy", style: TextStyle(color: alcoholValue == "heavy" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: alcoholValue == "heavy" ? Color(0xff16bdf1) : Colors.transparent,
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