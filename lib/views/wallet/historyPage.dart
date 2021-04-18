import 'package:doctorgo_doctor/views/pharmacy_nearby/order_detail_screen.dart';
import 'package:doctorgo_doctor/views/wallet/invoice_details_screen.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 110.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("History", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
                  
                  SizedBox(height: 10,),
                  
                  Expanded(
                    child: MediaQuery.removePadding(
                      removeTop: true,
                      context: context,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: ListView(
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => InvoiceDetailsPage()),
                                );
                              },
                              child: Card(
                                elevation: 3,
                                child: Container(
                                  padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 60, 
                                              width: 60,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                                              ),
                                            ),
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
                                                          Text("Zean Ronen"),
                                                          Text("Doctor of Medicine", style: TextStyle(fontWeight: FontWeight.bold),),
                                                          Text("D.Sc, MBBS, DDVI, MD-Demitol...", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                          Text("Procedure/new appointment..", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: <Widget>[
                                                              Text("\$2500", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                              MaterialButton(
                                                                onPressed: (){

                                                                },
                                                                height: 25,
                                                                child: Text("Paid", style: TextStyle(color: Color(0xff14a231)),),
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(15),
                                                                  side: BorderSide(
                                                                    color: Color(0xff14a231),
                                                                    width: 1.0
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
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
                            ),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => OrderDetailScreen())
                                );
                              },
                              child: Card(
                                elevation: 3,
                                child: Container(
                                  padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("North cardic Shop", style: TextStyle(fontSize: 16, color: Color(0xff14a231), fontWeight: FontWeight.bold),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text("Order No: 1994141454", style: TextStyle(fontWeight: FontWeight.bold),),
                                          Text("14.01.2020", style: TextStyle(fontWeight: FontWeight.w600),)
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8, bottom: 3),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Tacking number: ", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.grey),),
                                            Text("BRUJG54/584/", style: TextStyle(fontWeight: FontWeight.w600),)
                                          ],
                                        ),
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          MaterialButton(
                                            onPressed: (){

                                            },
                                            padding: EdgeInsets.all(0),
                                            color: Color(0xff2d79e6),
                                            height: 25,
                                            child: Text("Details", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12.5)
                                            ),
                                          ),
                                          Column(
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Text("Total Amount: ", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                  Text("112\$", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                                ],
                                              ),
                                              MaterialButton(
                                                onPressed: (){

                                                },
                                                height: 25,
                                                child: Text("Delivered", style: TextStyle(color: Color(0xff14a231)),),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                  side: BorderSide(
                                                    color: Color(0xff14a231),
                                                    width: 1.0
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
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => InvoiceDetailsPage()),
                                );
                              },
                              child: Card(
                                elevation: 3,
                                child: Container(
                                  padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Container(
                                              height: 60, 
                                              width: 60,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                                              ),
                                            ),
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
                                                          Text("Zean Ronen"),
                                                          Text("Doctor of Medicine", style: TextStyle(fontWeight: FontWeight.bold),),
                                                          Text("D.Sc, MBBS, DDVI, MD-Demitol...", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                          Text("Procedure/new appointment..", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: <Widget>[
                                                              Text("\$2500", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                              MaterialButton(
                                                                onPressed: (){

                                                                },
                                                                height: 25,
                                                                child: Text("Paid", style: TextStyle(color: Color(0xff14a231)),),
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(15),
                                                                  side: BorderSide(
                                                                    color: Color(0xff14a231),
                                                                    width: 1.0
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
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
                            ),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => OrderDetailScreen())
                                );
                              },
                              child: Card(
                                elevation: 3,
                                child: Container(
                                  padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("North cardic Shop", style: TextStyle(fontSize: 16, color: Color(0xff14a231), fontWeight: FontWeight.bold),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text("Order No: 1994141454", style: TextStyle(fontWeight: FontWeight.bold),),
                                          Text("14.01.2020", style: TextStyle(fontWeight: FontWeight.w600),)
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8, bottom: 3),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Tacking number: ", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.grey),),
                                            Text("BRUJG54/584/", style: TextStyle(fontWeight: FontWeight.w600),)
                                          ],
                                        ),
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          MaterialButton(
                                            onPressed: (){

                                            },
                                            padding: EdgeInsets.all(0),
                                            color: Color(0xff2d79e6),
                                            height: 25,
                                            child: Text("Details", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12.5)
                                            ),
                                          ),
                                          Column(
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Text("Total Amount: ", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                  Text("112\$", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                                ],
                                              ),
                                              MaterialButton(
                                                onPressed: (){

                                                },
                                                height: 25,
                                                child: Text("Delivered", style: TextStyle(color: Color(0xff14a231)),),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                  side: BorderSide(
                                                    color: Color(0xff14a231),
                                                    width: 1.0
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
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
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