import 'package:doctorgo_doctor/constants.dart';
import 'package:doctorgo_doctor/views/Clinics/clinic_screen.dart';
import 'package:doctorgo_doctor/views/Clinics/clinics_screen.dart';
import 'package:doctorgo_doctor/views/doctor_nearby/doctor_nearby.dart';
import 'package:doctorgo_doctor/views/emergency/emergency_screen.dart';
import 'package:doctorgo_doctor/views/pharmacy_nearby/pharmacyNearbyMapPage.dart';
import 'package:doctorgo_doctor/views/shops/shopDirectPage.dart';
import 'package:doctorgo_doctor/views/shops/shops_screen.dart';
import 'package:doctorgo_doctor/views/health_insurance/health_insurance.dart';
import 'package:doctorgo_doctor/views/health_tips/health_tip_screen.dart';
import 'package:doctorgo_doctor/views/health_tips/health_tips_screen.dart';
import 'package:doctorgo_doctor/views/laboratory_at_home/laboratory_at_home.dart';
import 'package:doctorgo_doctor/views/medical_specialities/doctor_profile_book.dart';
import 'package:doctorgo_doctor/views/medical_specialities/medical_specialities.dart';
import 'package:doctorgo_doctor/views/nurse_at_home/nurse_at_home.dart';
import 'package:doctorgo_doctor/views/online_doctors/online_doctors.dart';
import 'package:doctorgo_doctor/views/pharmacy_nearby/allDrugStores.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List nearbyDoctors = [
    {
      "name": "Dr Pooja Verma",
      "speciality": "Neurosurgeon",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
    {
      "name": "Dr Pooja Verma",
      "speciality": "Neurosurgeon",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
    {
      "name": "Dr Pooja Verma",
      "speciality": "Neurosurgeon",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
    {
      "name": "Dr Pooja Verma",
      "speciality": "Neurosurgeon",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
  ];

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


  List exclusiveOffers = [
    {
      "name": "Ashiwini Eye Clinic",
      "description": "Instant Cabs from Airport",
      "tag": "Cabs",
      "rating": 20.3
    },{
      "name": "Ashiwini Eye Clinic",
      "description": "Instant Cabs from Airport",
      "tag": "Cabs",
      "rating": 20.3
    },{
      "name": "Ashiwini Eye Clinic",
      "description": "Instant Cabs from Airport",
      "tag": "Cabs",
      "rating": 20.3
    },{
      "name": "Ashiwini Eye Clinic",
      "description": "Instant Cabs from Airport",
      "tag": "Cabs",
      "rating": 20.3
    },
  ];

  @override
  Widget build(BuildContext context) {
    final width = getWidth(context);
    final height = getHeight(context);

    return Scaffold(
    body: Container(
      height: height,
      width: width,
      child: Stack(
        children: <Widget>[
          Container(
            width: width,
            height: height,
            child: Column(
              children: <Widget>[
                Container(
                  width: width,
                  child: Column(
                    children: <Widget>[SizedBox()],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: width,
            height: height,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 1, right: 1, bottom: 1, top: 166),
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => LaboratoryAtHome()),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: CircleAvatar(
                                    backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                    child: Image.asset("assets/icon/Laboratory.png"),
                                  ),
                                ),
                                SizedBox(
                                  width: 80.0,
                                  child: Text(
                                    'Laboratory',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 13,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => HealthInsurance()),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: CircleAvatar(
                                    backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                    child: Image.asset("assets/icon/computer.png"),
                                  ),
                                ),
                                SizedBox(
                                  width: 80.0,
                                  child: SizedBox(
                                    width: 68.0,
                                    child: Text(
                                      'Health\nInsurance',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 13,
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (_) => MedicalSpecialities()),  
                            );
                          },
                          child: Card(
                            elevation: 3,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  width: 60,
                                  height: 60,
                                  child: CircleAvatar(
                                    backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset("assets/images/medicine.png"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 80.0,
                                  child: Text(
                                    'Medical\nSpecialities',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 13,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => NurseAtHome()),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                 Container(
                                  width: 60,
                                  height: 60,
                                  child: CircleAvatar(
                                    backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset("assets/images/nurse.png"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 80.0,
                                  child: Text(
                                    'Nurse\nat Home',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 13,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => EmergencyScreen()),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                 Container(
                                  width: 60,
                                  height: 60,
                                  child: CircleAvatar(
                                    backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset("assets/images/emergency.png"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 80.0,
                                  child: Text(
                                    'Emergency',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 13,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => OnlineDoctors()),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                 Container(
                                    width: 60,
                                    height: 60,
                                    child: CircleAvatar(
                                      backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        child: Image.asset("assets/images/doctor_icon.png"),
                                      ),
                                    ),
                                  ),
                                SizedBox(
                                  width: 80.0,
                                  child: Text(
                                    'Online doctors',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 13,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Doctor Nearby ',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 19,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => DoctorNearby()),
                                      );
                                    },
                                    child: Text("More", style: TextStyle(fontSize: 18, color: Color.fromRGBO(49, 102, 139, 1), fontWeight: FontWeight.bold),)
                                  )
                                ),
                              ],
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: nearbyDoctors
                                    .map((e) => GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (_) => DoctorProfileBook())
                                        );
                                      },
                                      child: Card(
                                            child: Container(
                                              padding: EdgeInsets.all(8),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(8.0),
                                                    child: CircleAvatar(
                                                      backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                                                    ),
                                                  ),
                                                  Text(
                                                    '${e["name"]}',
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      color:
                                                          const Color(0xff000000),
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Text(
                                                    '${e["speciality"]}',
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 9,
                                                      color:
                                                          const Color(0xff000000),
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                  Container(
                                                    width: 77.0,
                                                    height: 23.0,
                                                    child: Center(child: Text("1.2km away", style: TextStyle(fontSize: 12, color: Color(0xff3d8bff),),)),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(15.0),
                                                      color: Color(0xffffffff),
                                                      border: Border.all(
                                                        width: 1.0,
                                                        color: Color(0xff3d8bff)),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.star,
                                                        color: Color.fromRGBO(254, 149, 56, 1),
                                                      ),
                                                      Text("${e['rating']}")
                                                    ],
                                                  )
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
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Top Clinic',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 19,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => ClinicsScreen()),
                                      );
                                    },
                                    child: Text("More", style: TextStyle(fontSize: 18, color: Color.fromRGBO(49, 102, 139, 1), fontWeight: FontWeight.bold),)
                                  )
                                ),
                              ],
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
                                            padding: EdgeInsets.all(8),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  width: 220,
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
                                                    color:
                                                        const Color(0xff000000),
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Container(
                                                  width: 220,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget>[
                                                      Row(
                                                        children: <Widget>[
                                                          Container(
                                                            width: 30,
                                                            height: 30,
                                                            child: CircleAvatar(
                                                              backgroundImage: AssetImage("assets/images/women_profile.png"),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 30,
                                                            height: 30,
                                                            margin: EdgeInsets.only(left: 3, right: 3),
                                                            child: CircleAvatar(
                                                              backgroundImage: AssetImage("assets/images/profile3.png"),
                                                            ),
                                                          ),

                                                          Text("+2 more", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13),),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: <Widget>[
                                                          Image(
                                                            image: AssetImage("assets/images/location_blue.png"),
                                                            width: 13,
                                                          ),
                                                          Text(
                                                            '${e["location"]}',
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.grey,
                                                              fontSize: 13
                                                            ),
                                                            textAlign: TextAlign.left,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 220,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget>[
                                                      Text("SPONSORED", style: TextStyle(fontSize: 12, color: Colors.orange[300]),),
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (_) => ClinicScreen()),
                                                          );
                                                        },
                                                        child: Padding(
                                                          padding: EdgeInsets.only(top: 5,bottom: 5),
                                                          child: Container(
                                                            padding: EdgeInsets.only(left: 6, right: 6, top: 3, bottom: 3),
                                                            alignment: Alignment.center,
                                                            child: Text(
                                                              'Contact Clinic',
                                                              style: TextStyle(
                                                                fontFamily: 'Poppins',
                                                                color: const Color(
                                                                    0xff134b9c),
                                                                fontWeight:
                                                                FontWeight.w600,
                                                              ),
                                                              textAlign: TextAlign.left,
                                                            ),
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                  13.0),
                                                              color: const Color(0xffffffff),
                                                              border: Border.all(
                                                                width: 0.7,
                                                                color: const Color(
                                                                    0xff124b9b)),
                                                            ),
                                                          ),
                                                        )
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                  )
                                    )
                                  .toList(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Shops',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 19,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),

                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => ShopsScreen())
                                      );
                                    },
                                    child: Text("More", style: TextStyle(fontSize: 18, color: Color.fromRGBO(49, 102, 139, 1), fontWeight: FontWeight.bold),)
                                  )
                                ),
                              ],
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: exclusiveOffers
                                    .map((e) => GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (_) => ShopDirectPage())
                                        );
                                      },
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              height: 150,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                                image: DecorationImage(image: AssetImage("assets/images/cabs.jpeg",),
                                                fit: BoxFit.cover)
                                              ),

                                            ),
                                            Container(
                                              width: 100,
                                              padding: EdgeInsets.all(5),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: <Widget>[
                                                  Chip(label: Text("${e['tag']}")),
                                                  Text("${e['description']}"),
                                                  Text("${e['rating']}"),


                                                ],
                                              ),
                                            )
                                          ],
                                        )
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
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: Card(
                      child: Container(
                        width: width,
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8),
                                child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Pharmacy Nearby',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 19,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (_) => AllDrugStores())
                                        );
                                      },
                                      child: Text("More", style: TextStyle(fontSize: 18, color: Color.fromRGBO(49, 102, 139, 1), fontWeight: FontWeight.bold),)
                                    )
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => PharmacyNearbyMapPage())
                                );
                              },
                              child: Container(
                                width: width,
                                height: 130,
                                color: Colors.blue,
                                alignment: Alignment.center,
                                child: Text("Map goes here"),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ),

                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Health Tips',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 19,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),

                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => HealthTipsScreen())
                                      );
                                    },
                                    child: Text("More", style: TextStyle(fontSize: 18, color: Color.fromRGBO(49, 102, 139, 1), fontWeight: FontWeight.bold),)
                                  )
                                ),
                              ],
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: exclusiveOffers
                                    .map((e) => GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (_) => HealthTipScreen())
                                        );
                                      },
                                      child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                  height: 150,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                                    image: DecorationImage(image: AssetImage("assets/images/health.jpg",),
                                                    fit: BoxFit.cover)
                                                  ),

                                                ),
                                                Container(
                                                  width: 100,
                                                  padding: EdgeInsets.all(5),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: <Widget>[
                                                      Chip(label: Text("${e['tag']}", style: TextStyle(fontWeight: FontWeight.w700),)),
                                                      Text("${e['description']}", style: TextStyle(fontWeight: FontWeight.w700),),
                                                      Text("${e['rating']}", style: TextStyle(fontWeight: FontWeight.w700),),


                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
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
                ],
              ),
            ),
          ), 

          Container(
            width: width,
            height: 166.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
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

          Container(
            height: 140,
            alignment: Alignment.center,
            child: ListTile(
              leading: Container(
                width: 65,
                height: 65,
                child: CircleAvatar(
                  child: Image.asset("assets/images/profile3.png"),
                ),
              ),
              title: Text(
                'John Smith',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              subtitle: Text(
                'How is your health?',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  color: const Color(0x80ffffff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/icon/ring.png", width: 22),
                  )
                ],
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 135),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: width * 0.9,
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
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
