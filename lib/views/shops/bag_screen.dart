import 'package:doctorgo_doctor/views/pharmacy_nearby/delivery_pickup_screen.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class BagScreen extends StatefulWidget {
  @override
  _BagScreenState createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
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
              margin: EdgeInsets.only(top: 110),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Card(
                      elevation: 3,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            DottedBorder(
                              color: Colors.grey,
                              dashPattern: [8, 4],
                              strokeWidth: 2,
                              child: Image.asset("assets/icon/Image56.png", width: 90,),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Dabur Lal Tail 100ml", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                    Padding(
                                      padding: EdgeInsets.only(top: 8, bottom: 8),
                                      child: Text("Dabur Lal tai is an Ayurvedic baby")
                                    ),
                                    Text("massage oil made using the ..."),
                                    Padding(
                                      padding: EdgeInsets.only(top: 25),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Icon(Icons.remove, color: Colors.grey,),
                                              Container(
                                                width: 40,
                                                height: 35,
                                                child: Center(
                                                  child: Text("1", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                                                ),
                                                color: Color(0xff2d79e6),
                                              ),
                                              Icon(Icons.add, color: Colors.grey,)
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[
                                              Text("694\$", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                              Padding(
                                                padding: EdgeInsets.only(left: 8, right: 8),
                                                child: Text("840\$", style: TextStyle(color: Color.fromRGBO(163, 198, 255, 1), fontSize: 12, decoration: TextDecoration.lineThrough),)
                                              ),
                                              Icon(Icons.delete, size: 20, color: Color.fromRGBO(163, 198, 255, 1),),
                                            ],
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

                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 60, right: 60),
                      child: MaterialButton(
                        onPressed: (){

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.add),
                            Text("Add more"),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 110.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Bag", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
            Positioned(
              bottom: 25,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(bottom: 20),
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                Text("Total: ", style: TextStyle(color: Color(0xff2d79e6), fontSize: 17),),
                                Text("55.60 SAR", style: TextStyle(color: Color(0xff2d79e6), fontSize: 17, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(Icons.keyboard_arrow_down)
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.5, color: Color(0xff2d79e6)),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => DeliveryPickupScreen())
                        );
                      },
                      minWidth: MediaQuery.of(context).size.width*0.9,
                      height: 45,
                      color: Color(0xff2d79e6),
                      child: Text("CHECKOUT", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.5)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}