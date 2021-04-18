import 'package:doctorgo_doctor/views/Clinics/clinic_screen.dart';
import 'package:doctorgo_doctor/views/doctor_nearby/doctor_nearby_day_slot.dart';
import 'package:doctorgo_doctor/views/medical_specialities/doctor_profile_book.dart';
import 'package:doctorgo_doctor/views/medical_specialities/filterPage.dart';
import 'package:flutter/material.dart';
class DoctorsScreen extends StatefulWidget {
  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {

List topClinics = [
    {
      "name": "Ashiwini Eye Clinic",
      "location": "Andheri East",
    },{
      "name": "Ashiwini Eye Clinic",
      "location": "Andheri East",
    },{
      "name": "Ashiwini Eye Clinic",
      "location": "Andheri East",
    },{
      "name": "Ashiwini Eye Clinic",
      "location": "Andheri East",
    },{
      "name": "Ashiwini Eye Clinic",
      "location": "Andheri East",
    },{
      "name": "Ashiwini Eye Clinic",
      "location": "Andheri East",
    },
  ];


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
              padding: EdgeInsets.only(top: 140),
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => DoctorProfileBook()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 80, 
                                            width: 80,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage("assets/images/women_profile.png"),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "26 Votes", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                        ),

                                        Text(
                                          "26 Feedback"
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),

                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(bottom: 10),
                                                      child: Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold,),),
                                                    ),
                                                    Text("MBBS, DOMS, MS-Phthal... Opthalmologist", style: TextStyle(fontSize: 13, color: Colors.grey,height: 1.2 ),),
                                                    Text("26 years of experience", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Container(
                                                    height: 25,
                                                      child: MaterialButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (_) => DoctorProfileBook())
                                                        );
                                                      },
                                                      height: 25,
                                                      minWidth: 30,
                                                      child: Text(
                                                        'Profile',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: 'Roboto Medium',
                                                          color: Color(0xff2d79e6),
                                                        ),
                                                      ),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(50),
                                                        side: BorderSide(
                                                          color: Color(0xff2d79e6),
                                                          width: 1.0,
                                                        )),
                                                    ),
                                                  ),

                                                  Container(
                                                    height: 25,
                                                    margin: EdgeInsets.only(top: 5),
                                                    child: MaterialButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (_) => DoctorNearbyDaySlot())
                                                        );
                                                      },
                                                      height: 25,
                                                      minWidth: 30,
                                                      child: Text(
                                                        'BOOK',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: 'Roboto Medium',
                                                          color: Color(0xff2d79e6),
                                                        ),
                                                      ),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(50),
                                                        side: BorderSide(
                                                          color: Color(0xff2d79e6),
                                                          width: 1.0,
                                                        )
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
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        height: 15, 
                                                        width: 15,
                                                        margin: EdgeInsets.only(right: 5),
                                                        child: Image.asset("assets/images/location_blue.png",),
                                                      ),

                                                      Text("Andheri East", style: TextStyle(color: Colors.grey),)
                                                    ],
                                                  ),

                                                  Padding(
                                                    padding: EdgeInsets.only(top: 5),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text("\$500 onwards", style: TextStyle(fontWeight: FontWeight.bold),),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              Row(
                                                children: <Widget>[
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    child: CircleAvatar(
                                                      backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                                      child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset("assets/icon/Laboratory.png")
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    margin: EdgeInsets.only(left:1),
                                                    child: CircleAvatar(
                                                      backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                                      child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset("assets/icon/Laboratory.png")
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    margin: EdgeInsets.only(left:1),
                                                    child: CircleAvatar(
                                                      backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                                      child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset("assets/icon/Laboratory.png")
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    margin: EdgeInsets.only(left:1),
                                                    child: CircleAvatar(
                                                      backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                                      child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset("assets/icon/Laboratory.png")
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    margin: EdgeInsets.only(left:1),
                                                    child: CircleAvatar(
                                                      backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                                      child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset("assets/icon/Laboratory.png")
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("SPONSORED", style: TextStyle(color: Colors.orange[300], fontWeight: FontWeight.w800),),

                                      Container(
                                        height: 25,
                                        padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                                        child: Center(
                                          child: Text(
                                            "LASIK Eye Sur..", style: TextStyle(color: Colors.grey, fontSize: 11),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12.5),
                                          border: Border.all(width: 1, color: Colors.grey)
                                        ),
                                      ),

                                      Container(
                                        height: 25,
                                        padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                                        child: Center(
                                          child: Text(
                                            "Anterior Seg..", style: TextStyle(color: Colors.grey, fontSize: 11),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12.5),
                                          border: Border.all(width: 1, color: Colors.grey)
                                        ),
                                      ),

                                      Container(
                                        height: 25,
                                        padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                                        child: Center(
                                          child: Text(
                                            "+2 More", style: TextStyle(color: Colors.grey, fontSize: 11),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12.5),
                                          border: Border.all(width: 1, color: Colors.grey)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 8, right:8),
                      child: Card(
                        elevation: 3,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Clinic',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 19,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: topClinics
                                    .map((e) => GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (_) => ClinicScreen()),
                                        );
                                      },
                                      child: Card(
                                            child: Container(
                                              width: 220,
                                              padding: EdgeInsets.all(8),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    width: 200,
                                                    height: 80,
                                                    child: FittedBox(
                                                      fit: BoxFit.fitWidth,
                                                      child: Image(
                                                        image: AssetImage("assets/images/therapist_img2.jpeg")),
                                                    ),
                                                  ),
                                                  Divider(),
                                                  Text(
                                                    '${e["name"]}',
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      color: const Color(0xff000000),
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        height: 25,
                                                        width: 25,
                                                        child: Image.asset("assets/images/women_profile.png"),
                                                      ),

                                                      Container(
                                                        height: 25,
                                                        width: 25,
                                                        margin: EdgeInsets.only(right: 5, left: 5),
                                                        child: Image.asset("assets/images/profile3.png"),
                                                      ),

                                                      Text("+2 more", style: TextStyle(fontWeight: FontWeight.w800, color: Colors.grey, fontSize: 12),),

                                                      Padding(
                                                        padding: EdgeInsets.only(left: 10),
                                                        child: Image(
                                                          image: AssetImage("assets/images/location_blue.png"),
                                                          width: 10,
                                                        ),
                                                      ),
                                                      Text(
                                                        ' ${e["location"]}',
                                                        style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w800,
                                                          color: Colors.grey
                                                        ),
                                                        textAlign: TextAlign.left,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget>[
                                                      Text("SPONSORED", style: TextStyle(fontSize: 12, color: Colors.orange[300]),),
                                                      Container(
                                                        height: 25,
                                                                                                            child: MaterialButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(builder: (_) => ClinicScreen()),
                                                            );
                                                          },
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                            children: <Widget>[
                                                              Text(
                                                                'Contact Clinic',
                                                                style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontFamily: 'Roboto Medium',
                                                                  color: Color(0xff2d79e6),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(50),
                                                            side: BorderSide(
                                                              color: Color(0xff2d79e6),
                                                              width: 1.0,
                                                            )),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                    ))
                                      .toList(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => DoctorProfileBook()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Card(
                          elevation: 3,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                            const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 80, 
                                            width: 80,
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage("assets/images/women_profile.png"),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "26 Votes", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                        ),

                                        Text(
                                          "26 Feedback"
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),

                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: EdgeInsets.only(bottom: 10),
                                                      child: Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold,),),
                                                    ),
                                                    Text("MBBS, DOMS, MS-Phthal... Opthalmologist", style: TextStyle(fontSize: 13, color: Colors.grey,height: 1.2 ),),
                                                    Text("26 years of experience", style: TextStyle(fontSize: 13, color: Colors.grey),),
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                children: <Widget>[
                                                  Container(
                                                    height: 25,
                                                      child: MaterialButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (_) => DoctorProfileBook())
                                                        );
                                                      },
                                                      height: 25,
                                                      minWidth: 30,
                                                      child: Text(
                                                        'Profile',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: 'Roboto Medium',
                                                          color: Color(0xff2d79e6),
                                                        ),
                                                      ),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(50),
                                                        side: BorderSide(
                                                          color: Color(0xff2d79e6),
                                                          width: 1.0,
                                                        )),
                                                    ),
                                                  ),

                                                  Container(
                                                    height: 25,
                                                    margin: EdgeInsets.only(top: 5),
                                                    child: MaterialButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (_) => DoctorNearbyDaySlot())
                                                        );
                                                      },
                                                      height: 25,
                                                      minWidth: 30,
                                                      child: Text(
                                                        'BOOK',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: 'Roboto Medium',
                                                          color: Color(0xff2d79e6),
                                                        ),
                                                      ),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(50),
                                                        side: BorderSide(
                                                          color: Color(0xff2d79e6),
                                                          width: 1.0,
                                                        )
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
                                              Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        height: 15, 
                                                        width: 15,
                                                        margin: EdgeInsets.only(right: 5),
                                                        child: Image.asset("assets/images/location_blue.png",),
                                                      ),

                                                      Text("Andheri East", style: TextStyle(color: Colors.grey),)
                                                    ],
                                                  ),

                                                  Padding(
                                                    padding: EdgeInsets.only(top: 5),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text("\$500 onwards", style: TextStyle(fontWeight: FontWeight.bold),),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              Row(
                                                children: <Widget>[
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    child: CircleAvatar(
                                                      backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                                      child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset("assets/icon/Laboratory.png")
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    margin: EdgeInsets.only(left:1),
                                                    child: CircleAvatar(
                                                      backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                                      child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset("assets/icon/Laboratory.png")
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    margin: EdgeInsets.only(left:1),
                                                    child: CircleAvatar(
                                                      backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                                      child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset("assets/icon/Laboratory.png")
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    margin: EdgeInsets.only(left:1),
                                                    child: CircleAvatar(
                                                      backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                                      child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset("assets/icon/Laboratory.png")
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 25,
                                                    margin: EdgeInsets.only(left:1),
                                                    child: CircleAvatar(
                                                      backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                                      child: Container(
                                                        width: 15,
                                                        height: 15,
                                                        child: Image.asset("assets/icon/Laboratory.png")
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text("SPONSORED", style: TextStyle(color: Colors.orange[300], fontWeight: FontWeight.w800),),

                                      Container(
                                        height: 25,
                                        padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                                        child: Center(
                                          child: Text(
                                            "LASIK Eye Sur..", style: TextStyle(color: Colors.grey, fontSize: 11),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12.5),
                                          border: Border.all(width: 1, color: Colors.grey)
                                        ),
                                      ),

                                      Container(
                                        height: 25,
                                        padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                                        child: Center(
                                          child: Text(
                                            "Anterior Seg..", style: TextStyle(color: Colors.grey, fontSize: 11),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12.5),
                                          border: Border.all(width: 1, color: Colors.grey)
                                        ),
                                      ),

                                      Container(
                                        height: 25,
                                        padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                                        child: Center(
                                          child: Text(
                                            "+2 More", style: TextStyle(color: Colors.grey, fontSize: 11),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12.5),
                                          border: Border.all(width: 1, color: Colors.grey)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 110.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Doctors", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
                ],
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

            Positioned(
              right: 30,
              bottom: 45,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => FilterPage()),
                  );
                },
                child: Container(
                  width: 50,
                  child: Image.asset("assets/images/filter_green.png")
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}