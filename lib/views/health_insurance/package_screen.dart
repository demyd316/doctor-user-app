import 'package:doctorgo_doctor/views/health_insurance/health_insurance_time_slot.dart';
import 'package:doctorgo_doctor/views/shops/medicine_information.dart';
import 'package:flutter/material.dart';

class PackageScreen extends StatefulWidget {
  @override
  _PackageScreenState createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {

  bool specificationVisible;

  @override
  void initState() {
    specificationVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 35, left: 15),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, ),
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              child: Image.asset("assets/images/dabar_lal.jpg"),
            ),

            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(235, 241, 249, 1),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Package name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        color: Color.fromRGBO(231, 237, 247, 1),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text("Specification", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),)
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text("Two times faster increase in weight and height", style: TextStyle(fontWeight: FontWeight.w500),)
                                  ),
                                  Text("Babies experience better sleeping pattern", style: TextStyle(fontWeight: FontWeight.w500)),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, bottom:10),
                                    child: Text("Babies experience better appetite", style: TextStyle(fontWeight: FontWeight.w500))
                                  ),
                                  Text("Increases Blood Circulation", style: TextStyle(fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Visibility(
                        visible: specificationVisible,
                        child: Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Text("Two times faster increase in weight and height", style: TextStyle(fontWeight: FontWeight.w500),)
                              ),
                              Text("Babies experience better sleeping pattern", style: TextStyle(fontWeight: FontWeight.w500)),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom:10),
                                child: Text("Babies experience better appetite", style: TextStyle(fontWeight: FontWeight.w500))
                              ),
                              Text("Increases Blood Circulation", style: TextStyle(fontWeight: FontWeight.w500)),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Text("Two times faster increase in weight and height", style: TextStyle(fontWeight: FontWeight.w500),)
                              ),
                              Text("Babies experience better sleeping pattern", style: TextStyle(fontWeight: FontWeight.w500)),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom:10),
                                child: Text("Babies experience better appetite", style: TextStyle(fontWeight: FontWeight.w500))
                              ),
                              Text("Increases Blood Circulation", style: TextStyle(fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              specificationVisible = !specificationVisible;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Text(specificationVisible == false ? "See More" : "See Less", style: TextStyle(color: Color(0xff2d79e6), fontWeight: FontWeight.bold),),
                              Icon(specificationVisible == false ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up, color: Color(0xff2d79e6),)
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 5),
                        child: Text("Recommendations", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                      ),

                      Container(
                        height: 125,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        margin: EdgeInsets.only(bottom: 10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => PackageScreen())
                                );
                              },
                              child: Stack(
                                children: <Widget>[
                                  Card(
                                    elevation: 3,
                                    child: Container(
                                      width: 100,
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                            child: Container(
                                              height: 65,
                                              width: 65,
                                              child: Image.asset("assets/images/accu_check.jpg"),
                                            ),
                                          ),
                                          Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
                                          Text("This product cannot", style: TextStyle(color: Colors.grey, fontSize: 8, ),),
                                          Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10),), 
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Image.asset("assets/images/liked_star.png", width: 20),
                                  ),
                                ],
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => PackageScreen())
                                );
                              },
                              child: Stack(
                                children: <Widget>[
                                  Card(
                                    elevation: 3,
                                    child: Container(
                                      width: 100,
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                            child: Container(
                                              height: 65,
                                              width: 65,
                                              child: Image.asset("assets/images/accu_check.jpg"),
                                            ),
                                          ),
                                          Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
                                          Text("This product cannot", style: TextStyle(color: Colors.grey, fontSize: 8, ),),
                                          Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10),), 
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Image.asset("assets/images/liked_star.png", width: 20),
                                  ),
                                ],
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => PackageScreen())
                                );
                              },
                              child: Stack(
                                children: <Widget>[
                                  Card(
                                    elevation: 3,
                                    child: Container(
                                      width: 100,
                                      padding: EdgeInsets.all(5),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Center(
                                            child: Container(
                                              height: 65,
                                              width: 65,
                                              child: Image.asset("assets/images/accu_check.jpg"),
                                            ),
                                          ),
                                          Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
                                          Text("This product cannot", style: TextStyle(color: Colors.grey, fontSize: 8, ),),
                                          Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10),), 
                                        ],
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Image.asset("assets/images/liked_star.png", width: 20),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Card(
                              elevation: 3,
                              child: Container(
                                height: 30,
                                width: 70,
                                color: Colors.white,
                                child: Center(
                                  child: Text("1"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            MaterialButton(
                              color: Color(0xff2d79e6),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => HealthInsuranceTimeSlot()),
                                );
                              },
                              height: 50, 
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset("assets/images/cart_icon.png"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Add TO BAG",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
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



          ],
        ),
      ),
    );
  }
}