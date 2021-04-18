import 'package:doctorgo_doctor/views/emergency/payment_method.dart';
import 'package:flutter/material.dart';

class EmergencyScreen extends StatefulWidget {
  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text("Emergency"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color(0xff2d79e6), const Color(0xff093d87)
            ])          
          ),        
        ),      
      ),
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "If you are experiencing a crisis or\n emergency, please call 911.\nAccess is free",
                style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
              ),
              Container(
                width: 40,
                height: 40,
                child: Image.asset("assets/images/call.png", fit: BoxFit.cover,)
              ),

              Card(
                elevation: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 5),
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      Text("Are you looking for an emergency doctor?", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
              ),

              Stack(
                children: <Widget>[
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                      height: 120,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: Image.asset("assets/images/doctor_profile.png", fit: BoxFit.cover,),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Zean Ronen"),
                                Text("Doctor of Medicine", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("B.Sc, MBBS, DDVI, MD-Demitol...", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      width: 110.0,
                                      height: 25.0,
                                      child: Center(
                                        child: Text("LASIK Eye Sur..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Color(0xffffffff),
                                        border: Border.all( width: 1.0, color: Colors.grey),
                                      ),
                                    ),

                                    Container(
                                      width: 110.0,
                                      height: 25.0,
                                      child: Center(
                                        child: Text("Anterior Seg...", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Color(0xffffffff),
                                        border: Border.all( width: 1.0, color: Colors.grey),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(top: 0, right: 0, 
                    child: Container(
                      height: 35,
                      width: 35,
                      child:  GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => PaymentMethod()),
                          );
                        },
                        child: Image.asset("assets/images/call.png", fit: BoxFit.cover,)
                      ),
                    ),
                  )
                ],
              ),

              Stack(
                children: <Widget>[
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                      height: 120,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: Image.asset("assets/images/doctor_profile.png", fit: BoxFit.cover,),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Zean Ronen"),
                                Text("Doctor of Medicine", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("B.Sc, MBBS, DDVI, MD-Demitol...", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      width: 110.0,
                                      height: 25.0,
                                      child: Center(
                                        child: Text("LASIK Eye Sur..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Color(0xffffffff),
                                        border: Border.all( width: 1.0, color: Colors.grey),
                                      ),
                                    ),

                                    Container(
                                      width: 110.0,
                                      height: 25.0,
                                      child: Center(
                                        child: Text("Anterior Seg...", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Color(0xffffffff),
                                        border: Border.all( width: 1.0, color: Colors.grey),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(top: 0, right: 0, 
                    child: Container(
                      height: 35,
                      width: 35,
                      child:  Image.asset("assets/images/call.png", fit: BoxFit.cover,)
                    ),
                  )
                ],
              ),


              Stack(
                children: <Widget>[
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                      height: 120,
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: Image.asset("assets/images/doctor_profile.png", fit: BoxFit.cover,),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Zean Ronen"),
                                Text("Doctor of Medicine", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("B.Sc, MBBS, DDVI, MD-Demitol...", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      width: 110.0,
                                      height: 25.0,
                                      child: Center(
                                        child: Text("LASIK Eye Sur..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Color(0xffffffff),
                                        border: Border.all( width: 1.0, color: Colors.grey),
                                      ),
                                    ),

                                    Container(
                                      width: 110.0,
                                      height: 25.0,
                                      child: Center(
                                        child: Text("Anterior Seg...", style: TextStyle(color: Colors.grey, fontSize: 12),),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Color(0xffffffff),
                                        border: Border.all( width: 1.0, color: Colors.grey),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(top: 0, right: 0, 
                    child: Container(
                      height: 35,
                      width: 35,
                      child:  Image.asset("assets/images/call.png", fit: BoxFit.cover,)
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}