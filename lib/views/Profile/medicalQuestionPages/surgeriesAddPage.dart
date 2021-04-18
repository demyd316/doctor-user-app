import 'package:flutter/material.dart';

class SurgeriesAddPage extends StatefulWidget {
  @override
  _SurgeriesAddPageState createState() => _SurgeriesAddPageState();
}

class _SurgeriesAddPageState extends State<SurgeriesAddPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffe3eaf5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 80,
              padding: EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white,),
                      ),

                      SizedBox(
                        width: 15
                      ),

                      Text("Add a srugery", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ],
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text("DONE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
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

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 15, right: 15),
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Add a surgery",
                  hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}