import 'package:doctorgo_doctor/views/Profile/editProfilePage.dart';
import 'package:doctorgo_doctor/views/Profile/lifecycleQuestionPages/alcoholPage.dart';
import 'package:doctorgo_doctor/views/Profile/lifecycleQuestionPages/foodPage.dart';
import 'package:doctorgo_doctor/views/Profile/lifecycleQuestionPages/lifestyleActivePage.dart';
import 'package:doctorgo_doctor/views/Profile/lifecycleQuestionPages/prefessionPage.dart';
import 'package:doctorgo_doctor/views/Profile/lifecycleQuestionPages/smokingHabitPage.dart';
import 'package:flutter/material.dart';

class LifecycleQuestionPage extends StatefulWidget {
  int tabIndex;
  LifecycleQuestionPage({this.tabIndex});
  @override
  _LifecycleQuestionPageState createState() => _LifecycleQuestionPageState();
}

class _LifecycleQuestionPageState extends State<LifecycleQuestionPage> {

  int tabIndex;
  List<Widget> _tabs = [
    SmokingHabitPage(),
    AlcoholPage(),
    LifeStyleActivePage(),
    FoodPage(),
    ProfessionPage(),
  ];
  @override
  void initState() {
    tabIndex = widget.tabIndex;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffe3eaf5),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              padding: EdgeInsets.only(top: 35, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close, color: Colors.white,),
                      ),

                      SizedBox(
                        width: 15
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Lifecycle", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          Text((5-tabIndex).toString() + " questions left", style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.3)),)
                        ],
                      ),
                    ],
                  ),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if(tabIndex < 4){
                          tabIndex += 1;
                        }
                        else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => EditProfilePage()),
                          );
                        }
                      });
                    },
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.transparent,
                        child: Text(tabIndex == 4 ? "DONE" : "NEXT", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                      ),
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

            Expanded(
              child: tabIndex == null ? Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
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
              ) : _tabs[tabIndex],
            ),
          ],
        ),
      ),
    ); 
  }
}