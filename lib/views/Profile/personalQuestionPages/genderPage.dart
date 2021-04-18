import 'package:flutter/material.dart';

class GenderPage extends StatefulWidget {
  @override
  _GenderPageState createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  String genderValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text('Which gender do you identify with?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),)
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
                      genderValue = "male";
                    });
                  },
                  child: Text("MALE", style: TextStyle(color: genderValue == "male" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                ),
                decoration: BoxDecoration(
                  color: genderValue == "male" ? Color(0xff16bdf1) : Colors.transparent,
                  border: Border.all(width: 0.8, color: Colors.grey)
                ),
              ),

              Container(
                height: 40,
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      genderValue = "female";
                    });
                  },
                  child: Text("FEMALE", style: TextStyle(color: genderValue == "female" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                ),
                decoration: BoxDecoration(
                  color: genderValue == "female" ? Color(0xff16bdf1) : Colors.transparent,
                  border: Border.all(width: 0.8, color: Colors.grey)
                ),
              ),

              Container(
                height: 40,
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      genderValue = "other";
                    });
                  },
                  child: Text("OTHER", style: TextStyle(color: genderValue == "other" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                ),
                decoration: BoxDecoration(
                  color: genderValue == "other" ? Color(0xff16bdf1) : Colors.transparent,
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