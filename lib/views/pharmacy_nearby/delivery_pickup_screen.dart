import 'package:doctorgo_doctor/views/pharmacy_nearby/pharmacyPaymentMethod.dart';
import 'package:flutter/material.dart';

class DeliveryPickupScreen extends StatefulWidget {
  @override
  _DeliveryPickupScreenState createState() => _DeliveryPickupScreenState();
}

class _DeliveryPickupScreenState extends State<DeliveryPickupScreen> with TickerProviderStateMixin{

  bool deliveryInstructionsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              width: MediaQuery.of(context).size.width,
              top: 95,
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: TabBar(
                          labelColor: Colors.black,
                          indicatorColor: Colors.grey,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(
                              icon: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset("assets/icon/delivery.png", width: 20),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text("Delivery")
                                  ),
                                ],
                              )
                            ), 

                            Tab(
                              icon: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset("assets/icon/pickup.png", width: 20),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text("Pickup")
                                  ),
                                ],
                              )
                            ), 
                          ],
                        ), 
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height-120,
                        child: TabBarView(children: [delivery(), pickup()])
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 110.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Delivery & Pickup", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
          ],
        ),
      ),
    );
  }

  Widget delivery(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text("Set delivery location", style: TextStyle(fontSize: 18),)
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: Row(
              children: <Widget>[
                Container(
                  height: 20,
                  width: 20,
                  child: Image.asset('assets/images/location_blue.png'),
                ),
                Text("92/6, Std Floor, Oater Road Chardre Layout", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 12),), 
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 130,
            child: Image.asset("assets/images/map01.png")
          ),

          GestureDetector(
            onTap: (){
              setState(() {
                deliveryInstructionsVisible = !deliveryInstructionsVisible;
              });
            },
            child: Text("+ add delivery instructons", style: TextStyle(color: Color(0xff14a231)),)
          ),

          Visibility(
            visible: deliveryInstructionsVisible,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text("#home / office", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 45,
                  margin: EdgeInsets.only(left: 5, top: 5, bottom: 10),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "Number home / office",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                Text("Name of bulging / condominimum", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 45,
                  margin: EdgeInsets.only(left: 5, top: 5, bottom: 10),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "Name of bulging / condominium",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),

                Text("Reference", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 45,
                  margin: EdgeInsets.only(left: 5, top: 5, bottom: 10),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "Reference",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),

          Text("Bill Details", style: TextStyle(fontSize: 18),), 
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            margin: EdgeInsets.only(top: 10, bottom: 20),
            padding: EdgeInsets.only(top: 15, left: 8, right: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Items total", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    Text("\$ 50", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Delivery fee", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    Text("\$ 50", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("To pay", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    Text("\$ 50", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),)
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50, left: 45, right: 45),
            child: MaterialButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PharmacyPaymentMethod())
                );
              },
              minWidth: MediaQuery.of(context).size.width*0.9,
              height: 45,
              color: Color(0xff2d79e6),
              child: Text("Save & Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.5)
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget pickup(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Set time", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 45,
            margin: EdgeInsets.only(left: 5, top: 5, bottom: 10),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(8),
            child: TextFormField(
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 0.5, color: Colors.grey),
              borderRadius: BorderRadius.circular(10)
            ),
          ),

          Text("Select date", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 45,
            margin: EdgeInsets.only(left: 5, top: 5, bottom: 10),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(8),
            child: TextFormField(
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 0.5, color: Colors.grey),
              borderRadius: BorderRadius.circular(10)
            ),
          ),

          Divider(thickness: 1, color: Colors.grey,),


          Text("North Cardic Shop", style: TextStyle(fontSize: 18),),
          Padding(
            padding: EdgeInsets.only(top: 8, bottom: 5),
            child: Row(
              children: <Widget>[
                Container(
                  height: 20,
                  width: 20,
                  child: Image.asset('assets/images/location_blue.png'),
                ),
                Text("92/6, Std Floor, Oater Road Chardre Layout", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 12),), 
              ],
            ),
          ),

          Row(
            children: <Widget>[
              Icon(Icons.schedule, size: 20,),
              Text("9:00h - 21:00h", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 12),), 
            ],
          ),

          Container(
            margin: EdgeInsets.only(top: 5, bottom: 15),
            height: 130,
            child: Image.asset("assets/images/map01.png")
          ),

          
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),

          Text("Bill Details", style: TextStyle(fontSize: 18),), 
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            margin: EdgeInsets.only(top: 10, bottom: 20),
            padding: EdgeInsets.only(top: 15, left: 8, right: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Items total", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    Text("\$ 50", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Delivery fee", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    Text("\$ 50", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("To pay", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                    Text("\$ 50", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),)
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50, left: 45, right: 45),
            child: MaterialButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PharmacyPaymentMethod())
                );
              },
              minWidth: MediaQuery.of(context).size.width*0.9,
              height: 45,
              color: Color(0xff2d79e6),
              child: Text("Save & Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.5)
              ),
            ),
          ),
        ],
      ),
    );
  }
}