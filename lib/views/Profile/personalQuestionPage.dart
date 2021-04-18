import 'package:doctorgo_doctor/views/Profile/medicalQuestionPage.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/birthdayPage.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/bloodPage.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/cardNumber.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/cityPage.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/contactNumber.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/emailPage.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/emergencyContact.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/genderPage.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/heightPage.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/insuranceCompanyPage.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/insurancePolicyNumber.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/marriedPage.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPages/weightPage.dart';
import 'package:flutter/material.dart';

class PersonalQuestionPage extends StatefulWidget {
  int tabIndex;
  PersonalQuestionPage({this.tabIndex});
  @override
  _PersonalQuestionPageState createState() => _PersonalQuestionPageState();
}

class _PersonalQuestionPageState extends State<PersonalQuestionPage> {

  int tabIndex;
  List<Widget> _tabs = [
    CardNumber(),
    ContactNumber(),
    EmailPage(),
    BirthdayPage(),
    GenderPage(),
    CityPage(),
    BloodPage(),
    MarriedPage(),
    HeightPage(),
    WeightPage(),
    InsuranceCompanyPage(),
    InsurancePolicyNumber(),
    EmergencyContact(),
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
                          Text("Personal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          Text((13-tabIndex).toString() + " questions left", style: TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.3)),)
                        ],
                      ),
                    ],
                  ),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if(tabIndex < 12){
                          tabIndex += 1;
                        }
                        else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => MedicalQuestionPage(tabIndex: 0,)),
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