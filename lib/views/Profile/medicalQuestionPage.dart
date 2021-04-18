import 'package:doctorgo_doctor/views/Profile/lifecycleQuestionPage.dart';
import 'package:doctorgo_doctor/views/Profile/medicalQuestionPages/allergicPage.dart';
import 'package:doctorgo_doctor/views/Profile/medicalQuestionPages/chronicDiseasePage.dart';
import 'package:doctorgo_doctor/views/Profile/medicalQuestionPages/currentMedicinesPage.dart';
import 'package:doctorgo_doctor/views/Profile/medicalQuestionPages/injuriesPage.dart';
import 'package:doctorgo_doctor/views/Profile/medicalQuestionPages/pastMedicinesPage.dart';
import 'package:doctorgo_doctor/views/Profile/medicalQuestionPages/surgeriesPage.dart';
import 'package:flutter/material.dart';

class MedicalQuestionPage extends StatefulWidget {
  int tabIndex;
  MedicalQuestionPage({this.tabIndex});
  @override
  _MedicalQuestionPageState createState() => _MedicalQuestionPageState();
}

class _MedicalQuestionPageState extends State<MedicalQuestionPage> {

  int tabIndex;
  List<Widget> _tabs = [
    AllergicPage(),
    CurrentMedicinesPage(),
    PastMedicinesPage(),
    ChronicDiseasePage(),
    InjuriesPage(),
    SurgeriesPage(),
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
                          Text("Medical", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          Text((6-tabIndex).toString() + " questions left", style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.3)),)
                        ],
                      ),
                    ],
                  ),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if(tabIndex < 5){
                          tabIndex += 1;
                        }
                        else{
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => LifecycleQuestionPage(tabIndex: 0,)),
                          );
                        }
                      });
                    },
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.transparent,
                        child: Text("NEXT", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
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