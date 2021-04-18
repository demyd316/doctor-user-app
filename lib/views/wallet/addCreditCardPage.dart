import 'package:doctorgo_doctor/views/tabs/walletPage.dart';
import 'package:flutter/material.dart';

class AddCreditCardPage extends StatefulWidget {
  @override
  _AddCreditCardPageState createState() => _AddCreditCardPageState();
}

class _AddCreditCardPageState extends State<AddCreditCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              color: Color(0xff2560b3),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 43),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Add credit card", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 25, right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Card holder Names", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 10, bottom: 15),
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: TextFormField(
                            style: TextStyle(fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,

                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),

                        Text("Card Number:", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 10, bottom: 15),
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: TextFormField(
                            style: TextStyle(fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              prefixIcon: Image.asset("assets/icon/visa.png", width: 15,)
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Expiry Date", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),
                                  Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(top: 10, bottom: 15),
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: TextFormField(
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              width: 20
                            ),

                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("CCV/CVV", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),),
                                  Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(top: 10, bottom: 15),
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: TextFormField(
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ],
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

            Positioned(
              top: MediaQuery.of(context).size.height*0.6,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.4,
                color: Color(0xffe8eef7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 12),
                      child: Text(
                        "DoctorGo, does not store any credit or debit\n card information, this information is protected \nby the payment gateway",
                        style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w700),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    MaterialButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width*0.8,
                      color: Color(0xff2d79e6),
                      child: Text("SAVE", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 25, bottom: 20),
                      child: Text(
                        "Debit card are accepted at same location and for some categories",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/icon/visa.png"),
                        Image.asset("assets/icon/mastercard.png"),
                        Image.asset("assets/icon/discover.png", height: 70, width: 50,),
                        Image.asset("assets/icon/americanexperess.png", width: 60,),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 43, left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) =>WalletPage())
                  );
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