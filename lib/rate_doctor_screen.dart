import 'package:doctorgo_doctor/views/tabs/Tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class RateDoctorScreen extends StatefulWidget {
  @override
  _RateDoctorScreenState createState() => _RateDoctorScreenState();
}

class _RateDoctorScreenState extends State<RateDoctorScreen>{

  double rate = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50, bottom: 35),
                      child: Text("Rate the Doctor", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),)
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(right: 8),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text("Neil Woods", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),)
                            ),
                            Row(
                              children: <Widget>[
                                StarRating(
                                  size: 16.0,
                                  rating: 5,
                                  color: Color.fromRGBO(255, 149, 57, 1),
                                  borderColor: Colors.grey,
                                  starCount: 5,
                                  onRatingChanged: (rating) {

                                  }
                                ),
                                Text(" 4.5(150)", style: TextStyle(color: Colors.grey, fontSize: 12),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25, bottom: 10),
                      child: Text("Choose Rate", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                    ),
                    StarRating(
                      size: 40.0,
                      rating: rate,
                      color: Color.fromRGBO(255, 149, 57, 1),
                      borderColor: Colors.grey,
                      starCount: 5,
                      onRatingChanged: (rating) {
                        setState(() {
                          rate = rating;
                        });
                      }
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 35, bottom: 10, left: 50),
                          child: Text("Message", style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),

                    Container(
                      color: Colors.white,
                      height: 150,
                      padding: EdgeInsets.only(left: 5, right: 5),
                      margin: EdgeInsets.only(left: 50, right: 50, bottom: 40),
                      child: TextFormField(
                        maxLines: 7,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),

                    MaterialButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => TabsPage())
                        );
                      },
                      height: 45,
                      minWidth: MediaQuery.of(context).size.width*0.8,
                      padding: EdgeInsets.only(left: 25, right: 25),
                      color: Color(0xff2d79e6),
                      child: Text("DONE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.5)
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 45, 
              left: 20,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: (Icon(Icons.close, color: Colors.grey,)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}