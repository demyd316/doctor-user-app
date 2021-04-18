import 'package:doctorgo_doctor/views/Profile/lifecycleQuestionPage.dart';
import 'package:doctorgo_doctor/views/Profile/medicalQuestionPage.dart';
import 'package:doctorgo_doctor/views/Profile/personalQuestionPage.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
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
                padding: EdgeInsets.only(top: 40),
                child: TabBar(
                  labelColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
                  unselectedLabelColor: Colors.white.withOpacity(0.4),
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      text: "Personal"
                    ), 

                    Tab(
                      text: "Medical"
                    ), 
                    Tab(
                      text: "Lifestyle"
                    ),
                  ],
                ), 
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [personal(), medical(), lifestyle()])
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget personal(){
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Name", style: TextStyle(color: Colors.grey),),
                      Text("Santi", style: TextStyle(fontSize: 16)),
                    ],
                  ),

                  Container(
                    height: 70,
                    width: 70,
                    child: Center(child: Text("add photo", style: TextStyle(fontSize: 16, color: Color(0xff21b5eb), fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(35)
                    ),
                  ),
                ],
              ),
            ),
            
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 0,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Identity card number", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add ID number", style: TextStyle(fontSize: 15, color: Colors.grey,),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 1,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Contact Number", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add contact number", style: TextStyle(fontSize: 15, color: Colors.grey),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 2,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Email Id", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add email id", style: TextStyle(fontSize: 15, color: Colors.grey),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 3,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Date of Birth", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("yyyy mm dd", style: TextStyle(fontSize: 15, color: Colors.grey),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 4,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Gender", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add gender", style: TextStyle(fontSize: 15, color: Colors.grey),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 5,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Location", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add details", style: TextStyle(fontSize: 15, color: Colors.grey),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 6,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Blood Group", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add blood group", style: TextStyle(fontSize: 15, color: Colors.grey),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 7,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Marital Status", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add marital status", style: TextStyle(fontSize: 15, color: Colors.grey),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 8,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Height", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add height", style: TextStyle(fontSize: 15, color: Colors.grey),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 9,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Weight", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add weight", style: TextStyle(fontSize: 15, color: Colors.grey),)
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 10,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Health Insurance", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add health insurance", style: TextStyle(fontSize: 15, color: Colors.grey),),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 11,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Insurance policy number", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add insurance policy number", style: TextStyle(fontSize: 15, color: Colors.grey),),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PersonalQuestionPage(tabIndex: 12,)),
                    );
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Emergency Conact", style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text("add emergency details", style: TextStyle(fontSize: 15, color: Colors.grey),),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget medical(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MedicalQuestionPage(tabIndex: 0,)),
              );
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Allergies", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text("add allergies", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MedicalQuestionPage(tabIndex: 1)),
              );
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Current Medications", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text("add medications", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MedicalQuestionPage(tabIndex: 2)),
              );
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Past Medications", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text("add medications", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MedicalQuestionPage(tabIndex: 3)),
              );
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Chronic Diseases", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text("add disease", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MedicalQuestionPage(tabIndex: 4)),
              );
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Injuries", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text("add incident", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MedicalQuestionPage(tabIndex: 5)),
              );
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Surgeries", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text("add surgeries", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget lifestyle(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) =>LifecycleQuestionPage(tabIndex: 0,)),
              );
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Smoking Habits", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text("add details", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => LifecycleQuestionPage(tabIndex: 1,))
              );
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Alcohol consumption", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text("add details", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => LifecycleQuestionPage(tabIndex: 2,))
              );
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Activity level", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text("add details", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => LifecycleQuestionPage(tabIndex: 3,))
              );
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Food Preference", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text("add lifestyle", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => LifecycleQuestionPage(tabIndex: 4,))
              );
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Occupation", style: TextStyle(fontSize: 15, color: Colors.grey),),
                  Text("add occupation", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 0.5, color: Colors.grey)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}