import 'package:doctorgo_doctor/views/custom/remove_invoice_modal.dart';
import 'package:doctorgo_doctor/views/pharmacy_nearby/order_detail_screen.dart';
import 'package:doctorgo_doctor/views/wallet/addCreditCardPage.dart';
import 'package:doctorgo_doctor/views/wallet/invoice_details_screen.dart';
import 'package:doctorgo_doctor/views/pharmacy_nearby/my_orders_screen.dart';
import 'package:doctorgo_doctor/views/wallet/historyPage.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {

  bool requestVisilble;
  bool myOrdersVisible;
  bool historyVisible;
  bool paymentVisible;

  @override
  void initState() {
    requestVisilble = false;
    myOrdersVisible = false;
    historyVisible = false;
    paymentVisible = false;
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
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 110.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Wallet", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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

                    SizedBox(height: 10,),

                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            requestVisilble = !requestVisilble;
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Request',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Icon(Icons.keyboard_arrow_down, color: Colors.grey,)
                          ],
                        ),
                      ),
                    ),

                    Visibility(
                      visible: requestVisilble,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 380,
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: MediaQuery.removePadding(
                          removeTop: true,
                          context: context, 
                          child: ListView(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => InvoiceDetailsPage())
                                      );
                                    },
                                    child: Card(
                                      elevation: 3,
                                      child: Container(
                                        padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                                        width: MediaQuery.of(context).size.width,
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 60, 
                                                    width: 60,
                                                    child: CircleAvatar(
                                                      backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),

                                                Expanded(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: <Widget>[
                                                                Text("Zean Ronen"),
                                                                Text("Doctor of Medicine", style: TextStyle(fontWeight: FontWeight.bold),),
                                                                Text("D.Sc, MBBS, DDVI, MD-Demitol...", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600 ),),
                                                                Text("Procedure/new appointment..", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: <Widget>[
                                                                    Text("\$2500", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                                    MaterialButton(
                                                                      onPressed: (){

                                                                      },
                                                                      height: 25,
                                                                      child: Text("Pay", style: TextStyle(color: Color(0xff2d79e6)),),
                                                                      shape: RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.circular(15),
                                                                        side: BorderSide(
                                                                          color: Color(0xff2d79e6),
                                                                          width: 1.0
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
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    right: 15, 
                                    top: 10, 
                                    child: GestureDetector(
                                      onTap: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => RemoveInvoiceModal(),
                                        );
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset("assets/icon/close.png")
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => InvoiceDetailsPage())
                                      );
                                    },
                                    child: Card(
                                      elevation: 3,
                                      child: Container(
                                        padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                                        width: MediaQuery.of(context).size.width,
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 60, 
                                                    width: 60,
                                                    child: CircleAvatar(
                                                      backgroundImage: AssetImage("assets/icon/pharmacy-glass-display-cabinet-showcase-medical-store.png"),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),

                                                Expanded(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: <Widget>[
                                                                Text("North Shore Cardiac\nImaging. P.C.", style: TextStyle(fontWeight: FontWeight.bold),),
                                                                Text("2036 tobos HCNDVHy", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600 ),),
                                                                Text("Prescription...", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: <Widget>[
                                                                    Text("\$60", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                                    MaterialButton(
                                                                      onPressed: (){

                                                                      },
                                                                      height: 25,
                                                                      child: Text("Pay", style: TextStyle(color: Color(0xff2d79e6)),),
                                                                      shape: RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.circular(15),
                                                                        side: BorderSide(
                                                                          color: Color(0xff2d79e6),
                                                                          width: 1.0
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
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    right: 15, 
                                    top: 10, 
                                    child: GestureDetector(
                                      onTap: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => RemoveInvoiceModal(),
                                        );
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset("assets/icon/close.png")
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Stack(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => InvoiceDetailsPage())
                                      );
                                    },
                                    child: Card(
                                      elevation: 3,
                                      child: Container(
                                        padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                                        width: MediaQuery.of(context).size.width,
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 60, 
                                                    width: 60,
                                                    child: CircleAvatar(
                                                      backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10),

                                                Expanded(
                                                  child: Column(
                                                    children: <Widget>[
                                                      Row(
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: <Widget>[
                                                                Text("Zean Ronen"),
                                                                Text("Doctor of Medicine", style: TextStyle(fontWeight: FontWeight.bold),),
                                                                Text("D.Sc, MBBS, DDVI, MD-Demitol...", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600 ),),
                                                                Text("Procedure/new appointment..", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: <Widget>[
                                                                    Text("\$2500", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                                    MaterialButton(
                                                                      onPressed: (){

                                                                      },
                                                                      height: 25,
                                                                      child: Text("Pay", style: TextStyle(color: Color(0xff2d79e6)),),
                                                                      shape: RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.circular(15),
                                                                        side: BorderSide(
                                                                          color: Color(0xff2d79e6),
                                                                          width: 1.0
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
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                    right: 15, 
                                    top: 10, 
                                    child: GestureDetector(
                                      onTap: (){
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) => RemoveInvoiceModal(),
                                        );
                                      },
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        child: Image.asset("assets/icon/close.png")
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Divider(thickness: 1, color: Colors.grey,)
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                myOrdersVisible = !myOrdersVisible;
                              });
                            },
                            child: Row(
                              children: <Widget>[
                                Badge(
                                  badgeContent: Text('3', style: TextStyle(color: Colors.white, fontSize: 12),),
                                  badgeColor: Color(0xff2d79e6),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 3),
                                    child: Text(
                                      'My orders',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 17,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Icon(Icons.keyboard_arrow_down, color: Colors.grey,)
                                ),
                              ],
                            ),
                          ), 

                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => MyOrdersScreen()),
                                );
                              },
                              child: Text("More", style: TextStyle(fontSize: 17, color: Color.fromRGBO(49, 102, 139, 1), fontWeight: FontWeight.bold),)
                            )
                          ),
                        ],
                      ),
                    ),

                    Visibility(
                      visible: myOrdersVisible,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 260,
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: MediaQuery.removePadding(
                          removeTop: true,
                          context: context, 
                          child: ListView.builder(
                            itemCount: 4,
                            itemBuilder: myOrder,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Divider(thickness: 1, color: Colors.grey,)
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                historyVisible = !historyVisible;
                              });
                            },
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'History',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 17,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Icon(Icons.keyboard_arrow_down, color: Colors.grey,), 
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => HistoryPage()),
                                );
                              },
                              child: Text("More", style: TextStyle(fontSize: 17, color: Color.fromRGBO(49, 102, 139, 1), fontWeight: FontWeight.bold),)
                            )
                          ),
                        ],
                      ),
                    ),

                    Visibility(
                      visible: historyVisible,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 260,
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => InvoiceDetailsPage())
                                  );
                                },
                                child: Card(
                                  elevation: 3,
                                  child: Container(
                                    padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 60, 
                                                width: 60,
                                                child: CircleAvatar(
                                                  backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 10),

                                            Expanded(
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            Text("Zean Ronen"),
                                                            Text("Doctor of Medicine", style: TextStyle(fontWeight: FontWeight.bold),),
                                                            Text("D.Sc, MBBS, DDVI, MD-Demitol...", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                            Text("Procedure/new appointment..", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: <Widget>[
                                                                Text("\$2500", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                                MaterialButton(
                                                                  onPressed: (){

                                                                  },
                                                                  height: 25,
                                                                  child: Text("Paid", style: TextStyle(color: Color(0xff14a231)),),
                                                                  shape: RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.circular(15),
                                                                    side: BorderSide(
                                                                      color: Color(0xff14a231),
                                                                      width: 1.0
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
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                              ),

                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => OrderDetailScreen())
                                  );
                                },
                                child: Card(
                                  elevation: 3,
                                  child: Container(
                                    padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("North cardic Shop", style: TextStyle(fontSize: 16, color: Color(0xff14a231), fontWeight: FontWeight.bold),),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text("Order No: 1994141454", style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text("14.01.2020", style: TextStyle(fontWeight: FontWeight.w600),)
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8, bottom: 3),
                                          child: Row(
                                            children: <Widget>[
                                              Text("Tacking number: ", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.grey),),
                                              Text("BRUJG54/584/", style: TextStyle(fontWeight: FontWeight.w600),)
                                            ],
                                          ),
                                        ),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            MaterialButton(
                                              onPressed: (){
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (_) => OrderDetailScreen())
                                                );
                                              },
                                              padding: EdgeInsets.all(0),
                                              color: Color(0xff2d79e6),
                                              height: 25,
                                              child: Text("Details", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(12.5)
                                              ),
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Text("Total Amount: ", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                                                    Text("112\$", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                                                  ],
                                                ),
                                                MaterialButton(
                                                  onPressed: (){

                                                  },
                                                  height: 25,
                                                  child: Text("Delivered", style: TextStyle(color: Color(0xff14a231)),),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15),
                                                    side: BorderSide(
                                                      color: Color(0xff14a231),
                                                      width: 1.0
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Divider(thickness: 1, color: Colors.grey,)
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            paymentVisible = !paymentVisible;
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Payment methods',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Icon(Icons.keyboard_arrow_down, color: Colors.grey,)
                          ],
                        ),
                      ),
                    ),

                    Visibility(
                      visible: paymentVisible,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: (){
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          height: 400,
                                          padding: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  GestureDetector(
                                                    onTap: (){
                                                      Navigator.pop(context);
                                                    },
                                                    child: Icon(Icons.close, color: Color(0xff002aff),)
                                                  )
                                                ],
                                              ),

                                              Container(
                                                height: 50,
                                                width: 50,
                                                child: Image.asset("assets/icon/pagar.png")
                                              ),

                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Expanded(
                                                      flex: 1,
                                                      child: Container(
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                          children: <Widget>[
                                                            Expanded(
                                                              flex: 1,
                                                              child: Text("Card number", style: TextStyle(color: Color(0xff002aff), fontWeight: FontWeight.w700),)
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Expanded(
                                                              flex: 1,
                                                              child: Text("Expiry date", style: TextStyle(color: Color(0xff002aff), fontWeight: FontWeight.w700),)
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Expanded(
                                                              flex: 3,
                                                              child: Text("Billing Address", style: TextStyle(color:  Color(0xff002aff), fontWeight: FontWeight.w700), textAlign: TextAlign.end,)
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 15),
                                                    Expanded(
                                                      flex: 1,
                                                      child: Container(
                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: <Widget>[
                                                            Expanded(
                                                              flex: 1,
                                                              child: Text("****4242", style: TextStyle(color: Color(0xff002aff)),)
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Expanded(
                                                              flex: 1,
                                                              child: Text("10/2021", style: TextStyle(color: Color(0xff002aff)),)
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Expanded(
                                                              flex: 3,
                                                              child: Text("56 Balls Pond Rcad\nflat 54\nLondon 67TYUX", style: TextStyle(color:  Color(0xff002aff)))
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 20),
                                                child: MaterialButton(
                                                  onPressed: (){

                                                  },
                                                  height: 30,
                                                  color: Color(0xfff7f7ff),
                                                  child: Text("Set as default", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff002aff)),),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15)
                                                  ),
                                                ),
                                              ),

                                              Padding(
                                                padding: EdgeInsets.only(top: 35),
                                                child: Column(
                                                  children: <Widget>[
                                                    MaterialButton(
                                                      onPressed: (){
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (_) => AddCreditCardPage()),
                                                        );
                                                      },
                                                      height: 35,
                                                      minWidth: MediaQuery.of(context).size.width*0.9,
                                                      color: Color(0xfff7f7ff),
                                                      child: Text("Edit", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff002aff)),),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(15)
                                                      ),
                                                    ),

                                                    MaterialButton(
                                                      onPressed: (){

                                                      },
                                                      height: 35,
                                                      minWidth: MediaQuery.of(context).size.width*0.9,
                                                      color: Color(0xfff7f7ff),
                                                      child: Text("Delete", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(15)
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                                          ),
                                        );
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Container(
                                      height: 110,
                                      width: 150,
                                      padding: EdgeInsets.only(top: 15, left: 35, right: 35, bottom: 5),
                                      child: Column(
                                        children: <Widget>[
                                          Image.asset("assets/icon/visa2.png", width: 80,),
                                          Padding(
                                            padding: EdgeInsets.only(top: 12),
                                            child: Text("**** 4246", style: TextStyle(color: Color(0xff333399)),)
                                          )
                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                            height: 400,
                                            padding: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: <Widget>[
                                                    Icon(Icons.close, color: Color(0xff002aff),)
                                                  ],
                                                ),

                                                Container(
                                                  height: 50,
                                                  width: 50,
                                                  child: Image.asset("assets/icon/pagar.png")
                                                ),

                                                Expanded(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                            children: <Widget>[
                                                              Expanded(
                                                                flex: 1,
                                                                child: Text("Card number", style: TextStyle(color: Color(0xff002aff), fontWeight: FontWeight.w700),)
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Expanded(
                                                                flex: 1,
                                                                child: Text("Expiry date", style: TextStyle(color: Color(0xff002aff), fontWeight: FontWeight.w700),)
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Expanded(
                                                                flex: 3,
                                                                child: Text("Billing Address", style: TextStyle(color:  Color(0xff002aff), fontWeight: FontWeight.w700), textAlign: TextAlign.end,)
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(width: 15),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: <Widget>[
                                                              Expanded(
                                                                flex: 1,
                                                                child: Text("****4242", style: TextStyle(color: Color(0xff002aff)),)
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Expanded(
                                                                flex: 1,
                                                                child: Text("10/2021", style: TextStyle(color: Color(0xff002aff)),)
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Expanded(
                                                                flex: 3,
                                                                child: Text("56 Balls Pond Rcad\nflat 54\nLondon 67TYUX", style: TextStyle(color:  Color(0xff002aff)))
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(top: 20),
                                                  child: MaterialButton(
                                                    onPressed: (){

                                                    },
                                                    height: 30,
                                                    color: Color(0xfff7f7ff),
                                                    child: Text("Set as default", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff002aff)),),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15)
                                                    ),
                                                  ),
                                                ),

                                                Padding(
                                                  padding: EdgeInsets.only(top: 35),
                                                  child: Column(
                                                    children: <Widget>[
                                                      MaterialButton(
                                                        onPressed: (){
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (_) => AddCreditCardPage()),
                                                          );
                                                        },
                                                        height: 35,
                                                        minWidth: MediaQuery.of(context).size.width*0.9,
                                                        color: Color(0xfff7f7ff),
                                                        child: Text("Edit", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff002aff)),),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(15)
                                                        ),
                                                      ),

                                                      MaterialButton(
                                                        onPressed: (){

                                                        },
                                                        height: 35,
                                                        minWidth: MediaQuery.of(context).size.width*0.9,
                                                        color: Color(0xfff7f7ff),
                                                        child: Text("Delete", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(15)
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                                            ),
                                          );
                                        },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Container(
                                      height: 110,
                                      width: 150,
                                      padding: EdgeInsets.only(top: 0, left: 35, right: 35, bottom: 5),
                                      child: Column(
                                        children: <Widget>[
                                          Image.asset("assets/icon/mastercard2.png", width: 80,),
                                          Padding(
                                            padding: EdgeInsets.only(top: 0),
                                            child: Text("**** 4242", style: TextStyle(color: Color(0xff333399)),)
                                          )
                                        ],
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                color: Colors.grey,
                                dashPattern: [8, 4],
                                strokeWidth: 1,
                                radius: Radius.circular(10),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder:(_) => AddCreditCardPage())
                                    );
                                  },
                                  child: Container(
                                    color: Colors.transparent,
                                    height: 110,
                                    width: 150,
                                    child: Icon(Icons.add),
                                  ),
                                ),
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


  Widget myOrder(BuildContext context, int index){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => OrderDetailScreen()),
        );
      },
      child: Card(
        elevation: 3,
        child: Container(
          padding: EdgeInsets.only(top: 8, right: 8, left: 8),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("North cardic Shop", style: TextStyle(fontSize: 16, color: Color(0xff14a231), fontWeight: FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Order No: 1994141454", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("14.01.2020", style: TextStyle(fontWeight: FontWeight.w600),)
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 3),
                child: Row(
                  children: <Widget>[
                    Text("Tacking number: ", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.grey),),
                    Text("BRUJG54/584/", style: TextStyle(fontWeight: FontWeight.w600),)
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    onPressed: (){

                    },
                    padding: EdgeInsets.all(0),
                    color: Color(0xff2d79e6),
                    height: 25,
                    child: Text("Details", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.5)
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Total Amount: ", style: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w600),),
                          Text("112\$", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
                        ],
                      ),
                      Text("Pending", style: TextStyle(fontSize: 15, color: Color(0xffe88829), fontWeight: FontWeight.w700),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}