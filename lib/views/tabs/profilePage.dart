import 'package:doctorgo_doctor/constants.dart';
import 'package:doctorgo_doctor/views/Profile/editProfilePage.dart';
import 'package:doctorgo_doctor/views/Profile/notesPage.dart';
import 'package:doctorgo_doctor/views/custom/customSwitch.dart';
import 'package:doctorgo_doctor/views/doctor_nearby/doctor_nearby_day_slot.dart';
import 'package:doctorgo_doctor/views/laboratory_at_home/laboratoryBook.dart';
import 'package:doctorgo_doctor/views/laboratory_at_home/laboratoryProfile.dart';
import 'package:doctorgo_doctor/views/medical_specialities/doctor_profile_book.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();

  bool menstruacion;
  bool startValue;
  bool notesValue;
  bool protectionValue;
  @override
  void initState() {
    menstruacion = false;
    startValue = true;
    notesValue = true;
    protectionValue = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = getWidth(context);
    final height = getHeight(context);

    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: width,
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 260,
              padding: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(21.0),
                  bottomLeft: Radius.circular(21.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment(-1.21, -1.65),
                  end: Alignment(1.16, 1.46),
                  colors: [
                    Color(0xff2d79e6),
                    Color(0xff053476)
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Edit Profile", style: TextStyle(color: Colors.transparent, fontWeight: FontWeight.bold),),
                        Text("Hello!", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => EditProfilePage())
                            );
                          },
                          child: Text("Edit Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 15),
                    child: Text("Anastasia Taylor", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),)
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius:
                        BorderRadius.all(Radius.elliptical(51.0, 51.0)),
                      color: Color(0x1affffff),
                      border: Border.all(
                          width: 1.0, color: Color(0x1a707070)),
                    ),
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage:
                          AssetImage("assets/images/doctor_with_nurse.jpg"),
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              top: 200,
              child: Padding(
                padding: EdgeInsets.only(bottom:12.0),
                child: DefaultTabController(
                  length: 8,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: TabBar(
                          isScrollable: true,
                          labelColor: Colors.black,
                          indicatorColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(
                              icon: Text("Women's Calendar", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ), 

                            Tab(
                              icon: Text("Clinical history", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ), 
                            Tab(
                              icon: Text("Laboratory tests", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ),
                            Tab(
                              icon: Text("Laboratory images", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ),
                            Tab(
                              icon: Text("Medical Prescription", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ),
                            Tab(
                              icon: Text("Medical Reminder", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ),
                            Tab(
                              icon: Text("Medical Certificates", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ),
                            Tab(
                              icon: Text("Incoming Invoices", style: TextStyle(fontSize: 16, color: Colors.white),)
                            ),
                          ],
                        ), 
                      ),
                      Expanded(
                        child: Container(
                          child: TabBarView(children: [womenCalendar(), clinicalHistory(), laboratoryTests(), laboratoryImages(), medicalPrescription(), medicalReminder(), medicalCertificates(), incomingInvoices()])
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
  Widget womenCalendar(){
    return Padding(
      padding: EdgeInsets.only(top: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),

            Container(
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, size: 18),
                        onPressed: (){
                          setState(() {
                            _targetDateTime = DateTime(_targetDateTime.year, _targetDateTime.month -1);
                            _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                          });
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          _currentMonth,
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios, size: 18),
                        onPressed: (){
                          setState(() {
                            _targetDateTime = DateTime(_targetDateTime.year, _targetDateTime.month +1);
                            _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                          });
                        },

                      ),
                    ],
                  ),

                  CalendarCarousel<Event>(
                    daysTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    weekdayTextStyle: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                    todayBorderColor: Colors.green,
                    onDayPressed: (DateTime date, List<Event> events) {
                      this.setState(() => _currentDate2 = date);
                      events.forEach((event) => print(event.title));
                    },
                    showOnlyCurrentMonthDate: false,
                    weekendTextStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                    thisMonthDayBorderColor: Colors.grey,
                    weekFormat: false,
                    height: 375.0,
                    selectedDateTime: _currentDate2,
                    targetDateTime: _targetDateTime,
                    customGridViewPhysics: NeverScrollableScrollPhysics(),
                    markedDateCustomShapeBorder: CircleBorder(
                      side: BorderSide(color: Colors.yellow)
                    ),
                    markedDateCustomTextStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                    showHeader: false,
                    todayTextStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                    todayButtonColor: Colors.grey,
                    selectedDayButtonColor: Color(0xff2d79e6),
                    selectedDayTextStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    minSelectedDate: _currentDate.subtract(Duration(days: 360)),
                    maxSelectedDate: _currentDate.add(Duration(days: 360)),
                    prevDaysTextStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    inactiveDaysTextStyle: TextStyle(
                      color: Colors.tealAccent,
                      fontSize: 15,
                    ),
                    onCalendarChanged: (DateTime date) {
                      this.setState(() {
                        _targetDateTime = date;
                        _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                    onDayLongPressed: (DateTime date) {
                      print('long pressed date $date');
                    },
                  ),
                ],
              ),
            ),
            
            
            Card(
              elevation: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.fiber_manual_record, size: 13, color: Color(0xfffe6c89),),
                            Text("Menstruacio", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.panorama_fish_eye, size: 13, color: Color(0xfffe6c89),),
                            Text("Prediccion", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.fiber_manual_record, size: 13, color: Color(0xff14cedb),),
                            Text("Fertil", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.fiber_manual_record, size: 13, color: Color(0xff14cedb),),
                            Text("Ovulacion", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Checkbox(
                              onChanged: (value){
                                setState(() {
                                  startValue = value;
                                });
                              },
                              value: startValue,
                            ),

                            Text("Inicin de la menstruacion", style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  menstruacion = true;
                                });
                              },
                              child: Container(
                                height: 25,
                                width: 45,
                                child: Center(child: Text("Si", style: TextStyle(color: menstruacion == true ? Colors.white : Colors.black, fontWeight: FontWeight.bold),)),
                                decoration: BoxDecoration(
                                  color: menstruacion == true ? Color(0xff104693) : Color(0xffe5e5e5),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.5),
                                    bottomLeft: Radius.circular(12.5)
                                  ),
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  menstruacion = false;
                                });
                              },
                              child: Container( 
                                height: 25,
                                width: 45,
                                child: Center(child: Text("No", style: TextStyle(color: menstruacion == false ? Colors.white : Colors.black, fontWeight: FontWeight.bold),)),
                                decoration: BoxDecoration(
                                  color: menstruacion == false ? Color(0xff104693) : Color(0xffe5e5e5),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12.5),
                                    bottomRight: Radius.circular(12.5)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Checkbox(
                              onChanged: (value){
                                setState(() {
                                  notesValue = value;
                                });
                              },
                              value: notesValue,
                            ),

                            Text("Notas", style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),

                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => NotesPage())
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              Text("Notas", style: TextStyle(color: Color(0xff2d79e6), fontWeight: FontWeight.bold),),
                              Icon(Icons.keyboard_arrow_right, color: Color(0xff2d79e6),),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Checkbox(
                              onChanged: (value){
                                setState(() {
                                  protectionValue = value;
                                });
                              },
                              value: protectionValue,
                            ),

                            Text("Con proteccion", style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
            ),
            SizedBox(height: 280,)
          ],
        ),
      ),
    );
  }

  Widget clinicalHistory(){
    return Padding(
      padding: EdgeInsets.only(top: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Image.asset("assets/icon/save.png", width: 25)
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("14", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                        Text("Nov", style: TextStyle(color: Colors.grey),),
                        Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 55,
                              width: 55,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/women_profile.png"),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                Text("MBBS, DOMS, MS-Opthal..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("Opthalmologist", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("26 years of experience", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 13,
                                      width: 13,
                                      child: Image.asset('assets/images/location_blue.png'),
                                    ),
                                    Text("Andheri East", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        MaterialButton(
                          onPressed: (){

                          },
                          minWidth: 200,
                          child: Text("Diagnistic"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.grey)
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset("assets/icon/black_circle_user.png", width: 23),
                        Image.asset("assets/icon/blank_clalender.png", width: 23),
                        Image.asset("assets/icon/ojo.png", width: 23, color: Colors.black,),
                        Image.asset("assets/icon/share.png", width: 23, color: Colors.black, ), 
                        SizedBox(height: 20),
                      ],
                    )
                  ),
                ],
              ),
            ),

            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("15", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                        Text("Nov", style: TextStyle(color: Colors.grey),),
                        Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 55,
                              width: 55,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/women_profile.png"),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                Text("MBBS, DOMS, MS-Opthal..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("Opthalmologist", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("26 years of experience", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 13,
                                      width: 13,
                                      child: Image.asset('assets/images/location_blue.png'),
                                    ),
                                    Text("Andheri East", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        MaterialButton(
                          onPressed: (){

                          },
                          minWidth: 200,
                          child: Text("Diagnistic"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.grey)
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => DoctorProfileBook())
                            );
                          },
                          child: Image.asset("assets/icon/black_circle_user.png", width: 23)
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => DoctorNearbyDaySlot()),
                            );
                          },
                          child: Image.asset("assets/icon/blank_clalender.png", width: 23)
                        ),
                        Image.asset("assets/icon/ojo.png", width: 23, color: Colors.black ),
                        Image.asset("assets/icon/share.png", width: 23, color: Colors.black ), 
                        SizedBox(height: 20),
                      ],
                    )
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 250,
            ),
          ],
        ),
      ),
    );
  }

  Widget laboratoryTests(){
    return Padding(
      padding: EdgeInsets.only(top: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Image.asset("assets/icon/save.png", width: 25)
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("14", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                        Text("Nov", style: TextStyle(color: Colors.grey),),
                        Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 55,
                              width: 55,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/women_profile.png"),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                Text("MBBS, DOMS, MS-Opthal..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("Opthalmologist", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("26 years of experience", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 13,
                                      width: 13,
                                      child: Image.asset('assets/images/location_blue.png'),
                                    ),
                                    Text("Andheri East", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        MaterialButton(
                          onPressed: (){

                          },
                          minWidth: 200,
                          child: Text("Name of medical tests, separated by a comma"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.grey)
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => LaboratoryProfile())
                            );
                          },
                          child: Image.asset("assets/icon/black_circle_user.png", width: 23)
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => LaboratoryBook()),
                            );
                          },
                          child: Image.asset("assets/icon/blank_clalender.png", width: 23)
                        ),
                        Image.asset("assets/icon/ojo.png", width: 23, color: Colors.black),
                        Image.asset("assets/icon/share.png", width: 23, color: Colors.black), 
                        SizedBox(height: 20),
                      ],
                    )
                  ),
                ],
              ),
            ),

            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("15", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                        Text("Nov", style: TextStyle(color: Colors.grey),),
                        Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 55,
                              width: 55,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/women_profile.png"),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                Text("MBBS, DOMS, MS-Opthal..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("Opthalmologist", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("26 years of experience", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 13,
                                      width: 13,
                                      child: Image.asset('assets/images/location_blue.png'),
                                    ),
                                    Text("Andheri East", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        MaterialButton(
                          onPressed: (){

                          },
                          minWidth: 200,
                          child: Text("Name of medical tests, separated by a comma"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.grey)
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => DoctorProfileBook())
                            );
                          },
                          child: Image.asset("assets/icon/black_circle_user.png", width: 23)
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => DoctorNearbyDaySlot()),
                            );
                          },
                          child: Image.asset("assets/icon/blank_clalender.png", width: 23)
                        ),
                        Image.asset("assets/icon/ojo.png", width: 23, color: Colors.black, ),
                        Image.asset("assets/icon/share.png", width: 23, color: Colors.black,), 
                        SizedBox(height: 20),
                      ],
                    )
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 250,
            ),
          ],
        ),
      ),
    );
  }

  Widget laboratoryImages(){
    return Padding(
      padding: EdgeInsets.only(top: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Image.asset("assets/icon/save.png", width: 25)
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("14", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                        Text("Nov", style: TextStyle(color: Colors.grey),),
                        Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 55,
                              width: 55,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/women_profile.png"),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                Text("MBBS, DOMS, MS-Opthal..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("Opthalmologist", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("26 years of experience", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 13,
                                      width: 13,
                                      child: Image.asset('assets/images/location_blue.png'),
                                    ),
                                    Text("Andheri East", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        MaterialButton(
                          onPressed: (){

                          },
                          minWidth: 200,
                          child: Text("Name of medical tests, separated by a comma"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.grey)
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => LaboratoryProfile())
                            );
                          },
                          child: Image.asset("assets/icon/black_circle_user.png", width: 23,)
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => LaboratoryBook()),
                            );
                          },
                          child: Image.asset("assets/icon/blank_clalender.png", width: 23)
                        ),
                        Image.asset("assets/icon/ojo.png", width: 23, color: Colors.black),
                        Image.asset("assets/icon/share.png", width: 23, color: Colors.black), 
                        SizedBox(height: 20),
                      ],
                    )
                  ),
                ],
              ),
            ),

            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("15", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                        Text("Nov", style: TextStyle(color: Colors.grey),),
                        Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 55,
                              width: 55,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/women_profile.png"),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                Text("MBBS, DOMS, MS-Opthal..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("Opthalmologist", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("26 years of experience", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 13,
                                      width: 13,
                                      child: Image.asset('assets/images/location_blue.png'),
                                    ),
                                    Text("Andheri East", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        MaterialButton(
                          onPressed: (){

                          },
                          minWidth: 200,
                          child: Text("Name of medical tests, separated by a comma"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.grey)
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => DoctorProfileBook())
                            );
                          },
                          child: Image.asset("assets/icon/black_circle_user.png", width: 23)
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => DoctorNearbyDaySlot()),
                            );
                          },
                          child: Image.asset("assets/icon/blank_clalender.png", width: 23)
                        ),
                        Image.asset("assets/icon/ojo.png", width: 23, color: Colors.black,),
                        Image.asset("assets/icon/share.png", width: 23, color: Colors.black,), 
                        SizedBox(height: 20),
                      ],
                    )
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 250,
            ),
          ],
        ),
      ),
    );
  }

  Widget medicalPrescription(){
    return Padding(
      padding: EdgeInsets.only(top: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("14", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                        Text("Nov", style: TextStyle(color: Colors.grey),),
                        Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 10,
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 40,
                                      height: 40,
                                      child: CircleAvatar(
                                        backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                        child: Image.asset("assets/icon/Laboratory.png", width: 20),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      children: <Widget>[
                                        Text("Tonsillitis", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8),
                                          child: Text("Apr 22, 2020", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),)
                                        )
                                      ],
                                    ),
                                  ],
                                ),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Image.asset("assets/icon/ojo.png", width: 23, color: Colors.black),
                                    Image.asset("assets/icon/share.png", width: 23, color: Colors.black)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 250,
            ),
          ],
        ),
      ),
    );
  }

  Widget medicalReminder(){
    return Padding(
      padding: EdgeInsets.only(top: 18),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: CalendarCarousel<Event>(
                onDayPressed: (DateTime date, List<Event> events) {
                  this.setState(() => _currentDate = date);
                  events.forEach((event) => print(event.title));
                },
                weekendTextStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                weekdayTextStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                daysTextStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                headerTextStyle: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
                showHeaderButton: false,
                thisMonthDayBorderColor: Colors.grey,
                weekFormat: true,
                height: 155.0,
                selectedDateTime: _currentDate2,
                showIconBehindDayText: true,
                customGridViewPhysics: NeverScrollableScrollPhysics(),
                markedDateShowIcon: true,
                markedDateIconMaxShown: 2,
                selectedDayButtonColor: Color(0xff2d79e6),
                selectedDayTextStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                todayTextStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                markedDateIconBuilder: (event) {
                  return event.icon;
                },
                minSelectedDate: _currentDate.subtract(Duration(days: 360)),
                maxSelectedDate: _currentDate.add(Duration(days: 360)),
                todayButtonColor: Colors.grey,
                todayBorderColor: Colors.green,
                markedDateMoreShowTotal: true, 
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CustomSwitch(
                    activeColor: Color(0xfff5ac15),
                    value: true,
                    onChanged: (value) {
                      print("VALUE : $value");
                      setState(() {
                        // status = value;
                      });
                    },
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top :10),
              child: Slidable(
                actionExtentRatio: 0.25,
                actionPane: SlidableDrawerActionPane(),
                secondaryActions: <Widget>[
                  Container(
                    child: IconSlideAction(
                      color: Colors.transparent,
                      iconWidget: Image.asset("assets/icon/whiteCheck.png", width: 30),
                      onTap: () {
                        // Delete notification
                      },
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff3bab53),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8))
                    ),
                  ),
                ],
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Badge(
                        badgeContent: Text("3", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        badgeColor: Color(0xff1855ac),
                        child: Container(
                          width: 50, 
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xffd4e6ff),
                            borderRadius: BorderRadius.circular(25)
                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("7:30 am", style: TextStyle(fontSize: 11, color: Colors.grey, fontWeight: FontWeight.w600),),
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text("Essentiale Forte 300 mg", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top :10),
              child: Slidable(
                actionExtentRatio: 0.25,
                actionPane: SlidableDrawerActionPane(),
                secondaryActions: <Widget>[
                  Container(
                    child: IconSlideAction(
                      color: Colors.transparent,
                      iconWidget: Image.asset("assets/icon/whiteCheck.png", width: 30),
                      onTap: () {
                        // Delete notification
                      },
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff3bab53),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8))
                    ),
                  ),
                ],
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Badge(
                        badgeContent: Text("3", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        badgeColor: Color(0xff1855ac),
                        child: Container(
                          width: 50, 
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xffd4e6ff),
                            borderRadius: BorderRadius.circular(25)
                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("7:30 am", style: TextStyle(fontSize: 11, color: Colors.grey, fontWeight: FontWeight.w600),),
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text("Essentiale Forte 300 mg", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),
            SizedBox(height: 280,)
          ],
        ),
      ),
    );
  }

  Widget medicalCertificates(){
    return Padding(
      padding: EdgeInsets.only(top: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Image.asset("assets/icon/save.png", width: 25)
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("14", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                        Text("Nov", style: TextStyle(color: Colors.grey),),
                        Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 55,
                              width: 55,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/women_profile.png"),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                Text("MBBS, DOMS, MS-Opthal..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("Opthalmologist", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("26 years of experience", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 13,
                                      width: 13,
                                      child: Image.asset('assets/images/location_blue.png'),
                                    ),
                                    Text("Andheri East", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        MaterialButton(
                          onPressed: (){

                          },
                          minWidth: 200,
                          child: Text("Diagnistic"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.grey)
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset("assets/icon/ojo.png", width: 23, color: Colors.black,),
                        Image.asset("assets/icon/share.png", width: 23, color: Colors.black,), 
                        SizedBox(height: 20),
                      ],
                    )
                  ),
                ],
              ),
            ),

            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("15", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                        Text("Nov", style: TextStyle(color: Colors.grey),),
                        Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 55,
                              width: 55,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/women_profile.png"),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                Text("MBBS, DOMS, MS-Opthal..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("Opthalmologist", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Text("26 years of experience", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 13,
                                      width: 13,
                                      child: Image.asset('assets/images/location_blue.png'),
                                    ),
                                    Text("Andheri East", style: TextStyle(color: Colors.grey, fontSize: 12),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        MaterialButton(
                          onPressed: (){

                          },
                          minWidth: 200,
                          child: Text("Diagnistic"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2, color: Colors.grey)
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image.asset("assets/icon/ojo.png", width: 23, color: Colors.black,),
                        Image.asset("assets/icon/share.png", width: 23, color: Colors.black,), 
                        SizedBox(height: 20),
                      ],
                    )
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 250,
            ),
          ],
        ),
      ),
    );
  }

  Widget incomingInvoices(){
    return Padding(
      padding: EdgeInsets.only(top: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("14", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                        Text("Nov", style: TextStyle(color: Colors.grey),),
                        Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 10,
                    child: Column(
                      children: <Widget>[
                        Card(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 40,
                                      height: 40,
                                      child: CircleAvatar(
                                        backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                        child: Image.asset("assets/icon/Laboratory.png", width: 20),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Column(
                                      children: <Widget>[
                                        Text("Tonsillitis", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8),
                                          child: Text("Apr 22, 2020", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),)
                                        )
                                      ],
                                    ),
                                  ],
                                ),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Image.asset("assets/icon/ojo.png", width: 23, color: Colors.black),
                                    Image.asset("assets/icon/share.png", width: 23, color: Colors.black),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}
