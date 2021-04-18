import 'package:flutter/material.dart';

class ProfessionPage extends StatefulWidget {
  @override
  _ProfessionPageState createState() => _ProfessionPageState();
}

class _ProfessionPageState extends State<ProfessionPage> {
  String professionValue;
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
            child: Text('What is your profession?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
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
                          professionValue = "IT";
                        });
                      },
                      child: Text("IT Professional", style: TextStyle(color: professionValue == "IT" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: professionValue == "IT" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          professionValue = "medical";
                        });
                      },
                      child: Text("Medical Professional", style: TextStyle(color: professionValue == "medical" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: professionValue == "medical" ? Color(0xff16bdf1) : Colors.transparent,
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
                          professionValue = "banking";
                        });
                      },
                      child: Text("Banking professional", style: TextStyle(color: professionValue == "banking" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: professionValue == "banking" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          professionValue = "education";
                        });
                      },
                      child: Text("Education", style: TextStyle(color: professionValue == "education" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: professionValue == "education" ? Color(0xff16bdf1) : Colors.transparent,
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
                          professionValue = "student";
                        });
                      },
                      child: Text("Student", style: TextStyle(color: professionValue == "student" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: professionValue == "student" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          professionValue = "homeMaker";
                        });
                      },
                      child: Text("Home-maker", style: TextStyle(color: professionValue == "homeMaker" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: professionValue == "homeMaker" ? Color(0xff16bdf1) : Colors.transparent,
                      border: Border.all(width: 0.8, color: Colors.grey)
                    ),
                  ),

                  Container(
                    height: 40,
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {
                          professionValue = "other";
                        });
                      },
                      child: Text("Other", style: TextStyle(color: professionValue == "other" ? Colors.white : Colors.grey, fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      color: professionValue == "other" ? Color(0xff16bdf1) : Colors.transparent,
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