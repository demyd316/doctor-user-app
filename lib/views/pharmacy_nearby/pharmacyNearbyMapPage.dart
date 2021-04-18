import 'package:doctorgo_doctor/views/pharmacy_nearby/allDrugStores.dart';
import 'package:doctorgo_doctor/views/pharmacy_nearby/prescriptions_screen.dart';
import 'package:doctorgo_doctor/views/shops/shop_screen.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter/material.dart';

class PharmacyNearbyMapPage extends StatefulWidget {
  @override
  _PharmacyNearbyMapPageState createState() => _PharmacyNearbyMapPageState();
}

class _PharmacyNearbyMapPageState extends State<PharmacyNearbyMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 20, right: 20, top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Pharmacy nearby", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width*0.6,
                    margin: EdgeInsets.only(top: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 7),
                        prefixIcon: Icon(Icons.search, size: 20, color: Colors.grey,),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13, )
                      ),
                    ),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  // MaterialButton(
                  //   onPressed: (){
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(builder: (_) =>AllDrugStores()),
                  //     );
                  //   },
                  //   height: 40,
                  //   minWidth: MediaQuery.of(context).size.width*0.3,
                  //   color: Color(0xff2d79e6),
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width*0.3,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: <Widget>[
                  //         Image.asset("assets/icon/prescripcion.png", color: Colors.white, width: 20,),
                  //         Text("Buy Prescription", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                  //       ],
                  //     ),
                  //   ),
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20)
                  //   ),
                  // ),

                  MaterialButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => AllDrugStores())
                      );
                    },
                    height: 40,
                    minWidth: MediaQuery.of(context).size.width*0.5,
                    color: Color(0xff2d79e6),
                    child: Text("All drugstores", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom: 35, left: 5, right: 5),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: <Widget>[
                            Image.asset("assets/icon/download.png"),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Best Store", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          StarRating(
                                            size: 16.0,
                                            rating: 3,
                                            color: Color.fromRGBO(255, 149, 57, 1),
                                            borderColor: Colors.grey,
                                            starCount: 5,
                                            onRatingChanged: (rating) {
                                            }
                                          ),

                                          Image.asset("assets/icon/medal1.png", width: 30,),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Text("Luis Cordovez", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                  Text("1000 - 2000 m", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.fiber_manual_record, size: 10, color: Color(0xff44ff00),),
                                      Text("Open 10:00 - 18:00", style: TextStyle(color: Color(0xff44ff00), fontSize: 13),)
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: MaterialButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){

                                          },
                                          height: 30,
                                          color: Color(0xff2d79e6),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Image.asset("assets/icon/navegacion.png", width: 16, color: Colors.white,),
                                              SizedBox(width: 2),
                                              Text("Indicaclones", style: TextStyle(fontSize: 10, color: Colors.white),),
                                            ],
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        width: 5,
                                      ),

                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (_) => ShopScreen())
                                            );
                                          },
                                          height: 30,
                                          color: Color(0xff2d79e6),
                                          padding: EdgeInsets.all(0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Image.asset("assets/icon/home.png", width: 16, color: Colors.white,),
                                              SizedBox(width: 2),
                                              Text("Shop", style: TextStyle(fontSize: 11, color: Colors.white),),
                                            ],
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        width: 10,
                                      ),

                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (_) => PrescriptionsScreen())
                                            );
                                          },
                                          height: 30,
                                          color: Color(0xff2d79e6),
                                          child: Row(
                                            children: <Widget>[
                                              Image.asset("assets/icon/prescripcion.png", width: 18, color: Colors.white,),
                                              Padding(
                                                padding: EdgeInsets.only(left: 2),
                                                child: Text("Buy", style: TextStyle(fontSize: 11, color: Colors.white),)
                                              ),
                                            ],
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/location_bg.png',),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}