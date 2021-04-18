import 'package:flutter/material.dart';

class BloodPage extends StatefulWidget {
  @override
  _BloodPageState createState() => _BloodPageState();
}

class _BloodPageState extends State<BloodPage> {
  String bloodValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text('What is your blood group?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 60,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          bloodValue = "plusA";
                        });
                      },
                      child: Text("A+", style: TextStyle(color: bloodValue == "plusA" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: bloodValue == "plusA" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    width: 60,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          bloodValue = "minusA";
                        });
                      },
                      child: Text("A-", style: TextStyle(color: bloodValue == "minusA" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: bloodValue == "minusA" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    width: 60,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          bloodValue = "plusB";
                        });
                      },
                      child: Text("B+", style: TextStyle(color: bloodValue == "plusB" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: bloodValue == "plusB" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    width: 60,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          bloodValue = "minusB";
                        });
                      },
                      child: Text("B-", style: TextStyle(color: bloodValue == "minusB" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: bloodValue == "minusB" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    width: 60,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          bloodValue = "plusO";
                        });
                      },
                      child: Text("O+", style: TextStyle(color: bloodValue == "plusO" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: bloodValue == "plusO" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 60,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          bloodValue = "minusO";
                        });
                      },
                      child: Text("O-", style: TextStyle(color: bloodValue == "minusO" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: bloodValue == "minusO" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    width: 75,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          bloodValue = "plusAB";
                        });
                      },
                      child: Text("AB+", style: TextStyle(color: bloodValue == "plusAB" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: bloodValue == "plusAB" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    width: 75,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          bloodValue = "minusAB";
                        });
                      },
                      child: Text("AB-", style: TextStyle(color: bloodValue == "minusAB" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: bloodValue == "minusAB" ? Color(0xff16bdf1) : Colors.transparent,
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