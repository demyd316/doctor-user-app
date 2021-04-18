import 'package:doctorgo_doctor/views/shops/medicine_information.dart';
import 'package:doctorgo_doctor/views/shops/more_medicine_screen.dart';
import 'package:doctorgo_doctor/views/shops/shop_more_information.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

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
              padding: EdgeInsets.only(top: 245, left: 3, right: 3 ),
              child: Card(
                elevation: 3,
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 285,
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

                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => MoreMedicineScreen()),
                                );
                              },
                              child: Text("More", style: TextStyle(fontSize: 18, color: Color.fromRGBO(49, 102, 139, 1), fontWeight: FontWeight.bold),)
                            )
                          ),
                        ],
                      ),
                      Container(
                        height: 242,
                        child: MediaQuery.removePadding(
                          removeTop: true,
                          context: context,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: medicine
                          ),
                        ),
                      ),
                    ],
                  ),
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

                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 8, right: 5),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(69, 252, 3, 1),
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => ShopMoreInformation())
                                  );
                                },
                                child: Text("More Information", 
                                  style: TextStyle(color: Color.fromRGBO(69, 252, 3, 1), decoration: TextDecoration.underline),
                                ),
                              ),
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

  Widget medicine(BuildContext context, int index){
    return GestureDetector(
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
              width: 180,
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.only(left: 35),
                    child: Image.asset("assets/images/accu_check.jpg"),
                  ),
                  Text("Accu-Check Active", style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("This product cannot be returned for", style: TextStyle(color: Colors.grey, fontSize: 12, ),)
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text("\$755", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),)
                  ), 
                ],
              ),
            ),
          ),

          Positioned(
            top: 10, 
            right: 10,
            child: Image.asset("assets/images/liked_star.png", width: 30)
          ),
        ],
      ),
    );
  }
}