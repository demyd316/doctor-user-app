import 'package:doctorgo_doctor/rate_doctor_screen.dart';
import 'package:doctorgo_doctor/views/chatPage.dart';
import 'package:doctorgo_doctor/views/custom/reschedule_modal.dart';
import 'package:doctorgo_doctor/views/custom/schedule_cancel_modal.dart';
import 'package:doctorgo_doctor/views/online_doctors/online_doctor_profile_request.dart';
import 'package:flutter/material.dart';

class MySchedulesScreen extends StatefulWidget {
  @override
  _MySchedulesScreenState createState() => _MySchedulesScreenState();
}

class _MySchedulesScreenState extends State<MySchedulesScreen> {

  int tabIndex = 1; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[

            Container(
              width: MediaQuery.of(context).size.width,
              height: 140.0,
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 35, bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back, color: Colors.white,)
                        ),
                        Text("My schedules", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        Icon(Icons.arrow_back, color: Colors.transparent,),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(21.0),
                  bottomLeft: Radius.circular(21.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment(-1.6, 2.17),
                  end: Alignment(0.53, -1.52),
                  colors: [
                    const Color(0xff2d79e6),
                    const Color(0xff093d87)
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),

            Positioned(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              top: 65,
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: TabBar(
                          labelColor: Colors.black,
                          indicatorColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(
                              icon: Text("New Appointment", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ), 

                            Tab(
                              icon: Text("Appointment made", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ), 
                          ],
                        ), 
                      ),
                      Expanded(
                        child: Container(
                          child: TabBarView(children: [newAppointment(), appointmentMade()])
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget newAppointment(){
    return Padding(
      padding: EdgeInsets.only(top: 25),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText: "Search...",
                        contentPadding: EdgeInsets.all(0),
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => OnlineDoctorProfileRequest()),
                );
              },
              child: Card(
                elevation: 3,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.only(right: 10),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/therapist_img3.png"),
                                  ),
                                ),
                                Text("Anonymous", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),)
                              ],
                            ),

                            Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    
                                  },
                                  child: Image.asset("assets/icon/telefono1.png", width: 20,)
                                ),

                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10, right: 10),
                                    child: Image.asset("assets/icon/caminar2.png", width: 20,)
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Image.asset("assets/icon/camara-de-video1.png", width: 20)
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    
                                  },
                                  child: Image.asset("assets/icon/home.png", width: 20,)
                                ),
                              ],
                            ),
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10),
                            child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Dermatologist, Skin ethics, Skin Clinic & Dermatosurgery Center", style: TextStyle(color: Colors.grey, ),),
                                    
                                    Padding(
                                      padding: EdgeInsets.only(top: 8, bottom: 8),
                                      child: Row(
                                        children: <Widget>[
                                          Image.asset("assets/icon/reloj2.png", width: 13),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5, right: 10),
                                            child: Text("Time: 11:30 am", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 5),
                                            child: Image.asset("assets/icon/calendario1.png", width: 13)
                                          ),
                                          Text("Date: 10/07/2019", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){

                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset("assets/icon/alfiler3.png", width: 15,),
                                            Text(
                                              "Branch: ", 
                                              style: TextStyle(
                                                color: Color(0xff0931f6),
                                                fontSize: 13,
                                                decoration: TextDecoration.underline
                                              ),
                                            ),
                                            Text(
                                              "Farmacias Del Ahorro", 
                                              style: TextStyle(color: Color(0xff0931f6), fontSize: 13, decoration: TextDecoration.underline),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 8),
                                              child: Text("Experience", style: TextStyle(fontSize: 13, color: Colors.grey, ),)
                                            ),
                                            Text("20 Years")
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 8),
                                              child: Text("Likes", style: TextStyle(fontSize: 13, color: Colors.grey, ),)
                                            ),
                                            Text("125 (40%)"),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 8),
                                              child: Text("Reviews", style: TextStyle(fontSize: 13, color: Colors.grey, ),)
                                            ),
                                            Text("25")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text("Available Today", style: TextStyle(color: Color.fromRGBO(61, 186, 86, 1), fontSize: 12, fontWeight: FontWeight.w700),)
                                    ),
                                    Text("09:00-18:00", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w700),),
                                    MaterialButton(
                                      minWidth: 120,
                                      color: Color(0xff2d79e6),
                                      onPressed: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => RescheduleModal(),
                                        );
                                      },
                                      height: 35, 
                                      child: Text(
                                        "Reschedule",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),


                                    MaterialButton(
                                      minWidth: 120,
                                      color: Colors.red,
                                      onPressed: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => ScheduleCancelModal(),
                                        );
                                      },
                                      height: 35, 
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget appointmentMade(){
    return Padding(
      padding: EdgeInsets.only(top: 25),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText: "Search...",
                        contentPadding: EdgeInsets.all(0),
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => OnlineDoctorProfileRequest()),
                );
              },
              child: Card(
                elevation: 3,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.only(right: 10),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/therapist_img3.png"),
                                  ),
                                ),
                                Text("Anonymous", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),)
                              ],
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 100),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => ChatPage()),
                                  );
                                },
                                child: Image.asset("assets/icon/charla1.png", width: 30,)
                              )
                            ),
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10),
                            child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Dermatologist, Skin ethics, Skin Clinic & Dermatosurgery Center", style: TextStyle(color: Colors.grey, ),),
                                    
                                    Padding(
                                      padding: EdgeInsets.only(top: 8, bottom: 8),
                                      child: Row(
                                        children: <Widget>[
                                          Image.asset("assets/icon/reloj2.png", width: 13),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5, right: 10),
                                            child: Text("Time: 11:30 am", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 5),
                                            child: Image.asset("assets/icon/calendario1.png", width: 13)
                                          ),
                                          Text("Date: 10/07/2019", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){

                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset("assets/icon/alfiler3.png", width: 15,),
                                            Text(
                                              "Branch: ", 
                                              style: TextStyle(
                                                color: Color(0xff0931f6),
                                                fontSize: 13,
                                                decoration: TextDecoration.underline
                                              ),
                                            ),
                                            Text(
                                              "Farmacias Del Ahorro", 
                                              style: TextStyle(color: Color(0xff0931f6), fontSize: 13, decoration: TextDecoration.underline),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 8),
                                              child: Text("Experience", style: TextStyle(fontSize: 13, color: Colors.grey, ),)
                                            ),
                                            Text("20 Years")
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 8),
                                              child: Text("Likes", style: TextStyle(fontSize: 13, color: Colors.grey, ),)
                                            ),
                                            Text("125 (40%)"),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(bottom: 8),
                                              child: Text("Reviews", style: TextStyle(fontSize: 13, color: Colors.grey, ),)
                                            ),
                                            Text("25")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text("Available Today", style: TextStyle(color: Color.fromRGBO(61, 186, 86, 1), fontSize: 12, fontWeight: FontWeight.w700),)
                                    ),
                                    Text("09:00-18:00", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w700),),
                                    MaterialButton(
                                      minWidth: 120,
                                      color: Color(0xff2d79e6),
                                      onPressed: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (_) => RateDoctorScreen())
                                        );
                                      },
                                      height: 35, 
                                      child: Text(
                                        "Feedback",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),


                                    MaterialButton(
                                      minWidth: 120,
                                      color: Color(0xff2d79e6),
                                      onPressed: (){
                                        
                                      },
                                      height: 35, 
                                      child: Text(
                                        "Appointment",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}