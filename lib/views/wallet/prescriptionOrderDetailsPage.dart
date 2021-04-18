import 'package:doctorgo_doctor/views/pharmacy_nearby/rate_shop_screen.dart';
import 'package:doctorgo_doctor/views/shops/shops_screen.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class PrescriptionOrderDetailsPage extends StatefulWidget {
  @override
  _PrescriptionOrderDetailsPageState createState() => _PrescriptionOrderDetailsPageState();
}

class _PrescriptionOrderDetailsPageState extends State<PrescriptionOrderDetailsPage>{

  bool mapVisible = false;
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
              margin: EdgeInsets.only(top: 120),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 20),
                          child: Text("North Cardic Shop", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),)
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              mapVisible = !mapVisible;
                            });
                          },
                          child: Icon(Icons.keyboard_arrow_down)
                        )
                      ],
                    ),

                    Visibility(
                      visible: mapVisible,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset('assets/images/location_blue.png'),
                                ),
                                Text(" 92/6, Std Floor, Oater Road Chardre Layout", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 12),), 
                              ],
                            ),
                          ),

                          Row(
                            children: <Widget>[
                              Icon(Icons.schedule, size: 20, color: Colors.grey,),
                              Text(" 9:00h - 21:00h", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 12),), 
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15, top: 10),
                            height: 130,
                            child: Image.asset("assets/images/map01.png")
                          ),

                          Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Order No: 1994141454", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("14-01-2020", style: TextStyle(fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text("Tacking number: ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 12),),
                              Text("BRUJG5475847", style: TextStyle(fontWeight: FontWeight.w400,),),
                            ],
                          ),
                          Text("Delivered", style: TextStyle(color: Color.fromRGBO(27, 135, 81, 1)),),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 12),
                      child: Text("3 items", style: TextStyle(color: Colors.grey, fontSize: 12),),
                    ),

                    Card(
                      elevation: 3,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("CAPSULE Amoxicillin 250", style: TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.bold),),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: Text("DURATION", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),)
                                      ),
                                      Text("4 day(s)", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: Text("FREQUENCY", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500))
                                      ),
                                      Text("1-0-1 After Food", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Card(
                      elevation: 3,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("CAPSULE Amoxicillin 250", style: TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.bold),),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: Text("DURATION", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),)
                                      ),
                                      Text("4 day(s)", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: Text("FREQUENCY", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500))
                                      ),
                                      Text("1-0-1 After Food", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 15),
                            child: Text("Order Information", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),),
                          ),

                          Row(
                            children: <Widget>[
                              Text("Shipping Address: ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text("Newbridge court, Chino Hills,", style: TextStyle(fontWeight: FontWeight.w500),)
                              )
                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 15, bottom: 15),
                            child: Row(
                              children: <Widget>[
                                Text("Payment method: ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 28,
                                        child: Image.asset("assets/icon/mastercard.png")
                                      ),
                                      Text(" **** **** **** 3685", style: TextStyle(fontWeight: FontWeight.w500),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: <Widget>[
                                Text("Discount: ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text("10% Personal promo", style: TextStyle(fontWeight: FontWeight.w500),)
                                )
                              ],
                            ),
                          ),

                          Row(
                            children: <Widget>[
                              Text("Total Amount: ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text("1355\$", style: TextStyle(fontWeight: FontWeight.w500),)
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 50, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => ShopsScreen())
                              );
                            },
                            height: 45,
                            padding: EdgeInsets.only(left: 25, right: 25),
                            color: Color(0xff2d79e6),
                            child: Text("REORDER", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.5)
                            ),
                          ),

                          MaterialButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => RateShopScreen())
                              );
                            },
                            height: 45,
                            padding: EdgeInsets.only(left: 25, right: 25),
                            color: Color.fromRGBO(232, 136, 41, 1),
                            child: Text("Leave feedback", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.5)
                            ),
                          ),
                        ],
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
                  Text("Order Details", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
                    Color(0xff2d79e6), 
                    Color(0xff093d87)
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
          ],
        ),
      ),
    );
  }
}