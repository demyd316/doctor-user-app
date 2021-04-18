import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  String foodValue;
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
            child: Text('What does your diet mainly consist of?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
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
                          foodValue = "vegetarian";
                        });
                      },
                      child: Text("Vegetarian", style: TextStyle(color: foodValue == "vegetarian" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: foodValue == "vegetarian" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          foodValue = "noVegetarian";
                        });
                      },
                      child: Text("Non-Vegetarian", style: TextStyle(color: foodValue == "noVegetarian" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: foodValue == "noVegetarian" ? Color(0xff16bdf1) : Colors.transparent,
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
                          foodValue = "eggetarian";
                        });
                      },
                      child: Text("Eggetarian", style: TextStyle(color: foodValue == "eggetarian" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: foodValue == "eggetarian" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          foodValue = "vegan";
                        });
                      },
                      child: Text("Vegan", style: TextStyle(color: foodValue == "vegan" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: foodValue == "vegan" ? Color(0xff16bdf1) : Colors.transparent,
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