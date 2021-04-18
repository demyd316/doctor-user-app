import 'package:flutter/material.dart';

class CityPage extends StatefulWidget {
  @override
  _CityPageState createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text('Which city are you from?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
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
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Use my current location", style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),),  
                        Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 0.8, color: Colors.grey))
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Pick a city", style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),),  
                        Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 0.8, color: Colors.grey))
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ],
    ); 
  }
}