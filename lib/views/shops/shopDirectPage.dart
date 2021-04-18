import 'package:doctorgo_doctor/views/shops/medicine_information.dart';
import 'package:flutter/material.dart';

class ShopDirectPage extends StatefulWidget {
  @override
  _ShopDirectPageState createState() => _ShopDirectPageState();
}

class _ShopDirectPageState extends State<ShopDirectPage> {

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
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 110.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Exclusive offers", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
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
                                      child: Image.asset("assets/images/liked_star.png", width: 25)
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
                                      child: Image.asset("assets/images/liked_star.png", width: 25)
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
                                      child: Image.asset("assets/images/liked_star.png", width: 25)
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
                                      child: Image.asset("assets/images/liked_star.png", width: 25)
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