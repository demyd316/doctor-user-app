import 'package:doctorgo_doctor/views/Profile/medicalQuestionPages/allergicAddPage.dart';
import 'package:flutter/material.dart';

class AllergicPage extends StatefulWidget {
  @override
  _AllergicPageState createState() => _AllergicPageState();
}

class _AllergicPageState extends State<AllergicPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Center(
            child: Text('Are you allergic to anything?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),)
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
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("No", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                        Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => AllergicAddPage())
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Add an allergy", style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),),
                          Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(width: 0.8, color: Colors.grey))
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}