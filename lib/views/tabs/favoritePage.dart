import 'package:doctorgo_doctor/views/custom/remove_favorite_modal.dart';
import 'package:doctorgo_doctor/views/doctor_nearby/doctor_nearby_day_slot.dart';
import 'package:doctorgo_doctor/views/medical_specialities/doctor_profile_book.dart';
import 'package:doctorgo_doctor/views/shops/medicine_information.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  List favorites = [
    {
      "name": "Dr Pooja Verma",
      "speciality": "Neurosurgeon",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
    {
      "name": "Dr Pooja Verma",
      "speciality": "Neurosurgeon",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
    {
      "name": "Dr Pooja Verma",
      "speciality": "Neurosurgeon",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
    {
      "name": "Dr Pooja Verma",
      "speciality": "Neurosurgeon",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
  ];


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
                        Text("Favorites", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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

                  SizedBox(
                    height: 10,
                  ),

                  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){

                                },
                                child: Text("More", style: TextStyle(fontSize: 18, color: Color.fromRGBO(49, 102, 139, 1), fontWeight: FontWeight.bold),)
                              )
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: favorites
                                .map((e) => GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => DoctorProfileBook()),
                                      );
                                    },
                                    child: Stack(
                                      children: <Widget>[
                                        Card(
                                          child: Container(
                                            width: 100,
                                            padding: EdgeInsets.all(8),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(top: 8, bottom: 8, left: 2, right: 2),
                                                  child: CircleAvatar(
                                                    backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                                                  ),
                                                ),
                                                Text(
                                                  '${e["name"]}',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12,
                                                    color: Color(0xff000000),
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Text(
                                                  '${e["speciality"]}',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 9,
                                                    color:Color(0xff000000),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Container(
                                                  width: 77.0,
                                                  height: 23.0,
                                                  child: Center(child: Text("1.2km away", style: TextStyle(fontSize: 12, color: Color(0xff3d8bff),), )),
                                                  decoration: BoxDecoration(
                                                    borderRadius:BorderRadius.circular(15.0),
                                                    color: Color(0xffffffff),
                                                    border: Border.all(
                                                      width: 1.0,
                                                      color: Color(0xff3d8bff)
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: <Widget>[
                                                      Container(),
                                                      Row(
                                                        children: <Widget>[
                                                          Icon(
                                                            Icons.star,
                                                            color: Color.fromRGBO(254, 149, 56, 1),
                                                          ),
                                                          Text("${e['rating']}")
                                                        ],
                                                      ),

                                                      PopupMenuButton(
                                                        onSelected: (selected){
                                                          switch (selected) {
                                                            case 0:
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(builder: (_) => DoctorNearbyDaySlot())
                                                              );
                                                              break;
                                                            case 1:
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(builder: (_) => DoctorProfileBook()),
                                                              );
                                                              break;
                                                            case 2:
                                                              showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) => RemoveFavoriteModal(),
                                                              );
                                                              break;
                                                            default:
                                                          }
                                                        },
                                                        itemBuilder: (context) {
                                                          var list = List<PopupMenuEntry<Object>>();
                                                          list.add(
                                                            PopupMenuItem(
                                                              child: Text("Book", style: TextStyle(fontWeight: FontWeight.w600)),
                                                              value: 0,
                                                            ),
                                                          );

                                                          list.add(
                                                            PopupMenuItem(
                                                              child: Text("Profile", style: TextStyle(fontWeight: FontWeight.w600)),
                                                              value: 1,
                                                            ),
                                                          );

                                                          list.add(
                                                            PopupMenuItem(
                                                              child: Text("Delete", style: TextStyle(fontWeight: FontWeight.w600,),),
                                                              value: 2,
                                                            ),
                                                          );
                                                          return list;
                                                        },
                                                        icon: Icon(Icons.more_vert),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                        Positioned(
                                          right: 5,
                                          top: 5,
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            child: Image.asset("assets/icon/marcador.png")
                                          ),
                                        )
                                      ],
                                    ),
                                  ))
                                .toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Items", style: TextStyle(fontSize: 20, color: Colors.grey),)
                      ],
                    ),
                  ),

                  Expanded(
                    child: MediaQuery.removePadding(
                      removeTop: true,
                      context: context,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
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
                                    right: 8,
                                    top: 8,
                                    child: GestureDetector(
                                      onTap: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => RemoveFavoriteModal(),
                                        );
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset("assets/icon/circulo.png")
                                      ),
                                    ),
                                  )
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
                                    right: 8,
                                    top: 8,
                                    child: GestureDetector(
                                      onTap: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => RemoveFavoriteModal(),
                                        );
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset("assets/icon/circulo.png")
                                      ),
                                    ),
                                  )
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
                                    right: 8,
                                    top: 8,
                                    child: GestureDetector(
                                      onTap: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => RemoveFavoriteModal(),
                                        );
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset("assets/icon/circulo.png")
                                      ),
                                    ),
                                  )
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
                                    right: 8,
                                    top: 8,
                                    child: GestureDetector(
                                      onTap: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => RemoveFavoriteModal(),
                                        );
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset("assets/icon/circulo.png")
                                      ),
                                    ),
                                  )
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