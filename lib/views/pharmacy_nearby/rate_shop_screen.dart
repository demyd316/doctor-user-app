import 'package:doctorgo_doctor/views/tabs/Tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class RateShopScreen extends StatefulWidget {
  @override
  _RateShopScreenState createState() => _RateShopScreenState();
}

class _RateShopScreenState extends State<RateShopScreen>{

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
                      margin: EdgeInsets.only(top: 40, bottom: 20),
                      child: Text("Rate the Shop", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),)
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 70,
                              margin: EdgeInsets.only(left: 20, right: 10, top: 5),
                              padding: EdgeInsets.all(2),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/medical_store1.jpg", fit: BoxFit.cover,)
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),

                            Positioned(
                              top: 0,
                              right: 0, 
                              child: Container(
                                padding: EdgeInsets.all(3),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.star, color: Color.fromRGBO(254, 149, 56, 1), size: 15),
                                    Text("4.5", style: TextStyle(fontSize: 12),),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                              ),
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text("North Shore Cardic \nPvlt", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),)
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 17,
                                  width: 17,
                                  child: Image.asset('assets/images/location_blue.png'),
                                ),
                                Text("92/6, Std Floor, Oater Road Chardre Layout", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 9),), 
                              ],
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
              top: 35, 
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