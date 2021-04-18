import 'package:doctorgo_doctor/views/shops/medicine_information.dart';
import 'package:flutter/material.dart';

class MoreMedicineScreen extends StatefulWidget {
  @override
  _MoreMedicineScreenState createState() => _MoreMedicineScreenState();
}

class _MoreMedicineScreenState extends State<MoreMedicineScreen> {

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
              padding: EdgeInsets.only(top: 235, left: 3, right: 3 ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Medicine',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 19,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),

                    Expanded(
                      child: MediaQuery.removePadding(
                        removeTop: true,
                        context: context,
                        child: GridView.count(
                          crossAxisCount: 3,
                          childAspectRatio: 0.9,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => MedicineInformation()),
                                );
                              },
                              child: Stack(
                                children: <Widget>[
                                  Card(
                                    elevation: 3,
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                            child: Container(
                                              height: 80,
                                              width: 80,
                                              child: Image.asset("assets/images/accu_check.jpg"),
                                            ),
                                          ),
                                          Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                          Text("This product cannot be", style: TextStyle(color: Colors.grey, fontSize: 10, ),),
                                          Row(
                                          children: <Widget>[
                                            Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize:13,),), 
                                            Padding(
                                              padding: EdgeInsets.only(left: 15),
                                              child: Text("\$855", style: TextStyle(fontWeight: FontWeight.w700, fontSize:13, color: Colors.grey, decoration: TextDecoration.lineThrough),)
                                            ), 
                                          ],
                                        ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 10, 
                                    right: 10,
                                    child: Image.asset("assets/images/liked_star.png", width: 23)
                                  ),
                                ],
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => MedicineInformation()),
                                );
                              },
                              child: Stack(
                                children: <Widget>[
                                  Card(
                                    elevation: 3,
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                            child: Container(
                                              height: 80,
                                              width: 80,
                                              child: Image.asset("assets/images/accu_check.jpg"),
                                            ),
                                          ),
                                          Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                          Text("This product cannot be", style: TextStyle(color: Colors.grey, fontSize: 10, ),),
                                          Row(
                                          children: <Widget>[
                                            Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize:13,),), 
                                            Padding(
                                              padding: EdgeInsets.only(left: 15),
                                              child: Text("\$855", style: TextStyle(fontWeight: FontWeight.w700, fontSize:13, color: Colors.grey, decoration: TextDecoration.lineThrough),)
                                            ), 
                                          ],
                                        ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 10, 
                                    right: 10,
                                    child: Image.asset("assets/images/liked_star.png", width: 23)
                                  ),
                                ],
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => MedicineInformation()),
                                );
                              },
                              child: Stack(
                                children: <Widget>[
                                  Card(
                                    elevation: 3,
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                            child: Container(
                                              height: 80,
                                              width: 80,
                                              child: Image.asset("assets/images/accu_check.jpg"),
                                            ),
                                          ),
                                          Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                          Text("This product cannot be", style: TextStyle(color: Colors.grey, fontSize: 10, ),),
                                          Row(
                                          children: <Widget>[
                                            Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize:13,),), 
                                            Padding(
                                              padding: EdgeInsets.only(left: 15),
                                              child: Text("\$855", style: TextStyle(fontWeight: FontWeight.w700, fontSize:13, color: Colors.grey, decoration: TextDecoration.lineThrough),)
                                            ), 
                                          ],
                                        ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 10, 
                                    right: 10,
                                    child: Image.asset("assets/images/liked_star.png", width: 23)
                                  ),
                                ],
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => MedicineInformation()),
                                );
                              },
                              child: Stack(
                                children: <Widget>[
                                  Card(
                                    elevation: 3,
                                    child: Container(
                                      padding: EdgeInsets.all(3),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                            child: Container(
                                              height: 80,
                                              width: 80,
                                              child: Image.asset("assets/images/accu_check.jpg"),
                                            ),
                                          ),
                                          Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                          Text("This product cannot be", style: TextStyle(color: Colors.grey, fontSize: 10, ),),
                                          Row(
                                          children: <Widget>[
                                            Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize:13,),), 
                                            Padding(
                                              padding: EdgeInsets.only(left: 15),
                                              child: Text("\$855", style: TextStyle(fontWeight: FontWeight.w700, fontSize:13, color: Colors.grey, decoration: TextDecoration.lineThrough),)
                                            ), 
                                          ],
                                        ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 10, 
                                    right: 10,
                                    child: Image.asset("assets/images/liked_star.png", width: 23)
                                  ),
                                ],
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
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 210.0,
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
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/medical_store1.jpg", width: 70, height: 85, fit: BoxFit.cover,)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 100, right: 75),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text("North Shore Cardiac Imaging, P.C.", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.location_on, color: Colors.white,),
                              Expanded(
                                child: Text("2035 Lakeville Rd 101 & 104, New Hyde Park, NY 11040, United State", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),)
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 180),
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
            
          ],
        ),
      ),
    );
  }
}