import 'package:doctorgo_doctor/views/pharmacy_nearby/delivery_pickup_screen.dart';
import 'package:doctorgo_doctor/views/pharmacy_nearby/pharmacyPaymentMethod.dart';
import 'package:flutter/material.dart';

class InvoiceDetailsPage extends StatefulWidget {
  @override
  _InvoiceDetailsPageState createState() => _InvoiceDetailsPageState();
}

class _InvoiceDetailsPageState extends State<InvoiceDetailsPage>{

  bool commentVisible;

  @override
  void initState() {
    commentVisible = false;
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
              margin: EdgeInsets.only(top: 120, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Pre-invoice", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Number Invoice", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text("23432", style: TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w500),)
                          ),
                        ],
                      ),
                    ),
                    Divider(thickness: 1, color: Colors.grey,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Date", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text("23/06/2020", style: TextStyle(color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w500),)
                        ),
                      ],
                    ),
                    Divider(thickness: 1, color: Colors.grey,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text("Items", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),)
                        ),
                        Expanded(
                          flex: 1,
                          child: Text("Quantity", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),)
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text("Price", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),)
                          )
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text("Body Pack", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),)
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("1", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),)
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("\$50", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),)
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text("Fuo", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),)
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("12", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),)
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("\$200", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),)
                          ),
                        ],
                      ),
                    ),

                    Divider(thickness: 1, color: Colors.grey,),

                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text("Amount", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("\$250", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text("Tax", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("\$30", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text("Credit added", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("\$25", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text("Discount", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text("\$25", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("Total", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                          Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Text("\$280", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),)
                          )
                        ],
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                        setState(() {
                          commentVisible = !commentVisible;
                        });
                      },
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Color(0xff14a231),
                              borderRadius: BorderRadius.circular(7.5)
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text("Comments", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.grey),)
                          ),
                          Icon(Icons.keyboard_arrow_down, color: Colors.grey,)
                        ],
                      ),
                    ),

                    Visibility(
                      visible: commentVisible,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf sdfsdf", style: TextStyle(color: Colors.grey),)
                      ),
                    ),

                    Divider(thickness: 1, color: Colors.grey,),
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => DeliveryPickupScreen())
                              );
                            },
                            minWidth: MediaQuery.of(context).size.width*0.7,
                            height: 45,
                            color: Color(0xff2d79e6),
                            child: Text("Pay", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.5)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 110.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Invoice Details", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
}