import 'package:doctorgo_doctor/views/online_doctors/online_doctor_profile_request.dart';
import 'package:doctorgo_doctor/views/online_doctors/online_doctor_request.dart';
import 'package:doctorgo_doctor/views/online_doctors/online_doctors_by_type.dart';
import 'package:flutter/material.dart';
class OnlineDoctors extends StatefulWidget {
  @override
  _OnlineDoctorsState createState() => _OnlineDoctorsState();
}

class _OnlineDoctorsState extends State<OnlineDoctors> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 150, left: 5, right: 5),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Telemedicine now!", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,)),
                      ],
                    ),
                    Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 40,
                                      height: 40,
                                      child: CircleAvatar(
                                        backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                        child: Image.asset("assets/icon/Laboratory.png"),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Text("General Medicine", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (_)=> OnlineDoctorsByType()),
                                    );
                                  },
                                  child: Text("More", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromRGBO(49, 102, 139, 1)),)
                                ),
                              ],
                            ),
                            Container(
                              height: 140,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: doctor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 40,
                                      height: 40,
                                      child: CircleAvatar(
                                        backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                        child: Image.asset("assets/icon/Laboratory.png"),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Text("General Medicine", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (_)=> OnlineDoctorsByType()),
                                    );
                                  },
                                  child: Text("More", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromRGBO(49, 102, 139, 1)),)
                                ),
                              ],
                            ),
                            Container(
                              height: 140,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: doctor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      width: 40,
                                      height: 40,
                                      child: CircleAvatar(
                                        backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                        child: Image.asset("assets/icon/Laboratory.png"),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Text("General Medicine", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (_)=> OnlineDoctorsByType()),
                                    );
                                  },
                                  child: Text("More", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromRGBO(49, 102, 139, 1)),)
                                ),
                              ],
                            ),
                            Container(
                              height: 140,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: doctor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Container(
              width: MediaQuery.of(context).size.width,
              height: 110.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Online", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
            Padding(
              padding: EdgeInsets.only(top: 43, left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, color: Colors.white,),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 85),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText: "Search by medical speciality",
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
          ],
        ),
      ),
    );
  }
  Widget doctor(BuildContext context, int index){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => OnlineDoctorProfileRequest()),
        );
      },
      child: Card(
        elevation : 3,
        child: Container(
          padding: EdgeInsets.all(8),
          height: 140,
          width: 177,
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text("36 votes", style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w700))
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text("95 Feedback", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500))
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("Susan Morris", style: TextStyle(fontWeight: FontWeight.w700),),
                        Text("Medico General", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),), 
                        Text("26years of experience", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500, color: Colors.grey),), 
                        Text("\$500 onwards", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                      ],
                    ), 
                    Container(
                      height: 25,
                      padding: EdgeInsets.only(left: 5, right: 5),
                      margin: EdgeInsets.only(bottom: 7),
                      child: MaterialButton(
                        color: Color(0xff2d79e6),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => OnlineDoctorRequest()),
                          );
                        },
                        height: 25,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Request',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}