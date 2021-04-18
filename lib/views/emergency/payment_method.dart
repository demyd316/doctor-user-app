import 'package:doctorgo_doctor/views/custom/callAppOrNormalModal.dart';
import 'package:doctorgo_doctor/views/pharmacy_nearby/my_orders_screen.dart';
import 'package:doctorgo_doctor/views/wallet/addCreditCardPage.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
              height: 180.0,
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 35,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text("Payment methods", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text("Current Method", style: TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.bold),)
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.6, 2.17),
                  end: Alignment(0.53, -1.52),
                  colors: [
                    const Color(0xff2d79e6),
                    const Color(0xff093d87)
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 150,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => AddCreditCardPage()),
                      );
                    },
                    child: Card(
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        height: 60,
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Credit / Debit Card", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Color(0xff2d79e6)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 230, left: 15, right: 15),
              child: Column(
                children: <Widget>[
                  Text("Choose desired vehicle type. We offer cars suitable for most every day needs", style: TextStyle(fontWeight: FontWeight.bold),),
                  Card(
                    elevation: 2,
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 30,
                            padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                            child: Image.asset("assets/icon/dollar.png", width: 10,),
                            decoration: BoxDecoration(
                              color: Color(0xff2d79e6),
                              borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Cash Payment", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                              Text("DEFAULT METHOD"),
                            ],
                          ),
                          Icon(Icons.check_circle, color: Colors.blue,),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Card(
                    elevation: 2,
                    child: Container(
                      height: 80,
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/bank.png"),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Bank Transfer", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Icon(Icons.check_circle, color: Colors.transparent,),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 40),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width*0.9,
                      color: Color(0xff2d79e6),
                      onPressed: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => CallAppOrNormalModal(),
                        );
                      },
                      height: 50, 
                      child: Text(
                        "ADD PAYMENT METHOD",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: 
                    Text("Debit card are accpted at some location and for same categories",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    )),
                  Image.asset("assets/images/cards_img.png")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}