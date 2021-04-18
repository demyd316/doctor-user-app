import 'package:doctorgo_doctor/views/pharmacy_nearby/order_detail_screen.dart';
import 'package:doctorgo_doctor/views/wallet/prescriptionOrderDetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class MyOrdersScreen extends StatefulWidget {
  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  String tabStatus;

  @override
  void initState() {
    tabStatus = "Delivered";
    super.initState();
  }

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
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 10, right: 10),
              margin: EdgeInsets.only(top: 160),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: myOrder,
                ),
              )
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 40, bottom: 30),
                    child: Text("My Orders", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            tabStatus = "Delivered";
                          });
                        },
                        child: tabStatus == "Delivered" ? Container(
                          height: 38,
                          width: 120,
                          child: Center(child: Text(tabStatus, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromRGBO(29, 94, 186, 1)),),),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ) :
                        DottedBorder(
                          color: Color.fromRGBO(93, 133, 190, 1),
                          dashPattern: [4, 4],
                          strokeWidth: 2,
                          child: Container(
                            height: 32,
                            width: 120,
                            child: Center(child: Text("Delivered", style: TextStyle(color: Color.fromRGBO(43, 130, 195, 1), fontSize: 16),)),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            tabStatus = "Pickup";
                          });
                        },
                        child: tabStatus == "Pickup" ? Container(
                          height: 38,
                          width: 120,
                          child: Center(child: Text("Pickup", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromRGBO(29, 94, 186, 1)),),),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ) : 
                         DottedBorder(
                          color: Color.fromRGBO(93, 133, 190, 1),
                          dashPattern: [4, 4],
                          strokeWidth: 2,
                          child: Container(
                            height: 32,
                            width: 120,
                            child: Center(child: Text("Pickup", style: TextStyle(color: Color.fromRGBO(43, 130, 195, 1), fontSize: 16),)),
                          ),
                        ),
                      ),
                    ],
                  ),
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

  Widget myOrder(BuildContext context, int index) {
    return  GestureDetector(
      onTap: (){
        if(index == 0){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => PrescriptionOrderDetailsPage())
          );
        }
        else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => OrderDetailScreen())
          );
        }
      },
      child: Card(
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text("North cardic Shop", style: TextStyle(color: Color(0xff14a231), fontWeight: FontWeight.w500, fontSize: 17),)
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Order No: 1994141454", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("14-01-2020", style: TextStyle(fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Tacking number: ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),),
                        Text("BRUJG5475847", style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                    index == 0 ? Image.asset("assets/icon/prescripcion.png", width: 28) : Container(),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Total Amount: ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),),
                  Text("112\$", style: TextStyle(fontWeight: FontWeight.w700),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    onPressed: (){
                      if(index == 0){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => PrescriptionOrderDetailsPage())
                        );
                      }
                      else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => OrderDetailScreen())
                        );
                      }
                    },
                    child: Center(child: Text("Details", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),)),
                    color: Color.fromRGBO(15, 70, 148, 1),
                    height: 25,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.5),
                    ),
                  ),
                  Text(tabStatus, style: TextStyle(color: Color(0xff14a231), fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}