import 'package:doctorgo_doctor/views/health_insurance/package_screen.dart';
import 'package:flutter/material.dart';

class InsuranceScreen extends StatefulWidget {
  @override
  _InsuranceScreenState createState() => _InsuranceScreenState();
}

class _InsuranceScreenState extends State<InsuranceScreen> {

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
              padding: EdgeInsets.only(top: 210, left: 15),
              child: Text("Choose your best pakcage", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
            ),

            Padding(
              padding: EdgeInsets.only(top: 230, left: 10, right: 10 ),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => PackageScreen()),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Card(
                            elevation: 3,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      child: Image.asset("assets/images/accu_check.jpg"),
                                    ),
                                  ),
                                  Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("This product cannot be returned for", style: TextStyle(color: Colors.grey, fontSize: 12, ),),
                                  Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),), 
                                ],
                              ),
                            ),
                          ),
                          
                          Positioned(
                            right: 10, 
                            top: 10,
                            child: Image.asset("assets/images/liked_star.png", width: 30),
                          ),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => PackageScreen()),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Card(
                            elevation: 3,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      child: Image.asset("assets/images/accu_check.jpg"),
                                    ),
                                  ),
                                  Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("This product cannot be returned for", style: TextStyle(color: Colors.grey, fontSize: 12, ),),
                                  Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),), 
                                ],
                              ),
                            ),
                          ),
                          
                          Positioned(
                            right: 10, 
                            top: 10,
                            child: Image.asset("assets/images/liked_star.png", width: 30),
                          ),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => PackageScreen()),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Card(
                            elevation: 3,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      child: Image.asset("assets/images/accu_check.jpg"),
                                    ),
                                  ),
                                  Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("This product cannot be returned for", style: TextStyle(color: Colors.grey, fontSize: 12, ),),
                                  Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),), 
                                ],
                              ),
                            ),
                          ),
                          
                          Positioned(
                            right: 10, 
                            top: 10,
                            child: Image.asset("assets/images/liked_star.png", width: 30),
                          ),
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => PackageScreen()),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Card(
                            elevation: 3,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      child: Image.asset("assets/images/accu_check.jpg"),
                                    ),
                                  ),
                                  Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("This product cannot be returned for", style: TextStyle(color: Colors.grey, fontSize: 12, ),),
                                  Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),), 
                                ],
                              ),
                            ),
                          ),
                          
                          Positioned(
                            right: 10, 
                            top: 10,
                            child: Image.asset("assets/images/liked_star.png", width: 30),
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
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190.0,
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
              padding: EdgeInsets.only(top: 35, right: 25),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white,)
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 70, 
                            height: 80,
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
                      Padding(
                        padding: EdgeInsets.only(top: 5, left: 110),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text("Insurance name", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.location_on, color: Colors.white,),
                                  Text("2035 Lakeville Rd 101 & 104, New Hyde\n Park, NY 11040, United State", style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 160),
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