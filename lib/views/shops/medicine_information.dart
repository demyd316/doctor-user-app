import 'package:doctorgo_doctor/views/shops/bag_screen.dart';
import 'package:doctorgo_doctor/views/shops/vendorInformation.dart';
import 'package:flutter/material.dart';

class MedicineInformation extends StatefulWidget {
  @override
  _MedicineInformationState createState() => _MedicineInformationState();
}

class _MedicineInformationState extends State<MedicineInformation> {

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
        color: Color(0xffe3eaf5),
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
                padding: EdgeInsets.only(left: 15, right: 15),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Dabur Lal Tail 100ml", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text("1,043.70. SAR", style: TextStyle(color: Colors.red),)
                      ),
                      Text("FREE Shipping on your order today", style: TextStyle(fontSize: 16, color: Colors.grey),),
                      
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: 90,
                              height: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset("assets/icon/proteger.png", width: 25), 
                                  Text("100%", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(60, 148, 255, 1), fontSize: 16),),
                                  Text("Genaine!", style: TextStyle(color: Color.fromRGBO(60, 148, 255, 1), fontSize: 12),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(213, 231, 252, 1),
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),

                            Container(
                              width: 90,
                              height: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset("assets/icon/money.png", width: 25), 
                                  Text("Cash", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(60, 148, 255, 1), fontSize: 16),),
                                  Text("On Delivery", style: TextStyle(color: Color.fromRGBO(60, 148, 255, 1), fontSize: 12),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(213, 231, 252, 1),
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),

                            Container(
                              width: 90,
                              height: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset("assets/icon/deposit.png", width: 25,), 
                                  Text("2 Days", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(60, 148, 255, 1), fontSize: 16),),
                                  Text("Free Exchange", style: TextStyle(color: Color.fromRGBO(60, 148, 255, 1), fontSize: 12),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(213, 231, 252, 1),
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),

                            Container(
                              width: 90,
                              height: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset("assets/icon/delivery.png", color: Color.fromRGBO(60, 148, 255, 1),  width: 25), 
                                  Text("Free", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(60, 148, 255, 1), fontSize: 16),),
                                  Text("Delivery", style: TextStyle(color: Color.fromRGBO(60, 148, 255, 1), fontSize: 12),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(213, 231, 252, 1),
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => VendorInformation())
                            );
                          },
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 10,
                                height: 10,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xff14a231),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                              ),
                              Text("Vendor Information", style: TextStyle( fontWeight: FontWeight.bold, color: Color(0xff14a231),),)
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              specificationVisible = !specificationVisible;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Text("See More", style: TextStyle(color: Color(0xff2d79e6), fontWeight: FontWeight.bold),),
                              Icon(Icons.keyboard_arrow_down, color: Color(0xff2d79e6),)
                            ],
                          ),
                        ),
                      ),

                      Visibility(
                        visible: specificationVisible,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Specification", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),

                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text("Two times faster increase in weight and height", style: TextStyle(fontWeight: FontWeight.bold),)
                                  ),
                                  Text("Babies experience better sleeping pattern", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, bottom:10),
                                    child: Text("Babies experience better appetite", style: TextStyle(fontWeight: FontWeight.bold))
                                  ),
                                  Text("Increases Blood Circulation", style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Text("OverView", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),

                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text("Dabur Lal Tail is an Ayurvedic baby", style: TextStyle(fontWeight: FontWeight.bold),)
                            ),
                            Text("massage oil made using the time-tested", style: TextStyle(fontWeight: FontWeight.bold)),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom:10),
                              child: Text("Ayurvedic ingredients that have many", style: TextStyle(fontWeight: FontWeight.bold))
                            ),
                            Text("proven benefits for the Baby. It's massage", style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 10),
                        child: Text("More from Medicine", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),)
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
                                  MaterialPageRoute(builder: (_) => MedicineInformation())
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
                                    child: Image.asset("assets/images/liked_star.png", width: 20)
                                  ),
                                ],
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => MedicineInformation())
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
                                    child: Image.asset("assets/images/liked_star.png", width: 20)
                                  ),
                                ],
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => MedicineInformation())
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
                                    child: Image.asset("assets/images/liked_star.png", width: 20)
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
                                child: Center(
                                  child: Text("1"),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)
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
                                  MaterialPageRoute(builder: (_) => BagScreen()),
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