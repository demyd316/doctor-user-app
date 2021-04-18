import 'package:doctorgo_doctor/views/shops/shop_screen.dart';
import 'package:doctorgo_doctor/views/pharmacy_nearby/prescriptions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
class AllDrugStores extends StatefulWidget {
  @override
  _AllDrugStoresState createState() => _AllDrugStoresState();
}

class _AllDrugStoresState extends State<AllDrugStores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffe3eaf5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 135),
              padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: offer,
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 110.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("All drugstores", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 85),
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
                        hintText: "Search",
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
  Widget offer(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ShopScreen())
            );
          },
          child: Card(
            elevation: 3,
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset("assets/images/medical_store1.jpg", width: 96, height: 120, fit: BoxFit.cover)
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("North Shore Cardiac Imaging,P.C.", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 5),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Image.asset("assets/icon/gps.png", width: 16)
                                  ),
                                  Expanded(
                                    child: Text("2035 Lakeville Rd 101 & 104, New Hyde Park, NY 11040, United States", style: TextStyle(color: Colors.grey, fontSize: 13))
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          height: 8,
                                          width: 8,
                                          decoration: BoxDecoration(
                                            color: Color(0xff14a231),
                                            borderRadius: BorderRadius.circular(4)
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Text("Open", style: TextStyle(color: Color(0xff14a231)),)
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 13),
                                      child: Text("9:30 - 21:00", style: TextStyle(color: Color(0xff14a231)))
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Card(
                        elevation: 3,
                        child: Container(
                          height: 25,
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            children: <Widget>[
                              StarRating(
                                size: 14.0,
                                rating: 5,
                                color: Colors.orange[300],
                                borderColor: Colors.grey,
                                starCount: 5,
                                onRatingChanged: (rating) {

                                }
                              ),
                              Text("4.5")
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),

                      MaterialButton(
                        onPressed: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (_) => PrescriptionsScreen()),
                          );
                        },
                        minWidth: 140,
                        height: 35,
                        color: Color(0xff2d79e6),
                        child: Row(
                          children: <Widget>[
                            Image.asset("assets/icon/prescripcion.png", width: 25, color: Colors.white,),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Text("Buy Prescription", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),)
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.5)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),
        Positioned(
          right: 10,
          child: Image.asset("assets/icon/medal1.png", width: 60,)
        ),
      ],
    );
  }
}