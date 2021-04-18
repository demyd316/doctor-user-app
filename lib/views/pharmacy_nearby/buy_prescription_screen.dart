import 'package:doctorgo_doctor/views/wallet/invoice_details_screen.dart';
import 'package:flutter/material.dart';

class BuyPrescriptionScreen extends StatefulWidget {
  @override
  _BuyPrescriptionScreenState createState() => _BuyPrescriptionScreenState();
}

class _BuyPrescriptionScreenState extends State<BuyPrescriptionScreen>{

  bool firstValue ;
  bool secondValue;
  bool thirdValue;
  bool forthValue;
  bool fifthValue;
  bool sixthValue;
  bool continueValue;
  @override
  void initState() {
    firstValue = true;
    secondValue = true;
    thirdValue = true;
    forthValue = true;
    fifthValue = false;
    sixthValue = false;
    continueValue = false;
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
            Positioned(
              width: MediaQuery.of(context).size.width,
              top: 120,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 65,
                        width: 65,
                        margin: EdgeInsets.only(left: 30, right: 50),
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(21, 79, 165, 1),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Container(
                                height: 45,
                                width: 45,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/profile3.png"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text("Jhon Smith", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
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
                              tabs: [Tab(text: 'All'), Tab(text: 'Personalized',)],
                            ), 
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height-120,
                            margin: EdgeInsets.only(top: 15),
                            child: TabBarView(children: [all(), personalized()])
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 110.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Buy prescription", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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

  Widget all(){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (value){
                  setState(() {
                    firstValue = value;
                  });
                },
                value: firstValue,
              ),
              Expanded(
                child: Card(
                  elevation: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text("CAPSULE Amoxicillin 250", style: TextStyle(fontSize: 17,),)
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("DURATION", style: TextStyle(color: Colors.grey),),
                                Text("4 day(s)")
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("FREQUENCY", style: TextStyle(color: Colors.grey),),
                                  Text("1-0-1 After Food"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (value){
                  setState(() {
                    secondValue = value;
                  });
                },
                value: secondValue,
              ),
              Expanded(
                child: Card(
                  elevation: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text("CAPSULE Amoxicillin 250", style: TextStyle(fontSize: 17,),)
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("DURATION", style: TextStyle(color: Colors.grey),),
                                Text("4 day(s)")
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("FREQUENCY", style: TextStyle(color: Colors.grey),),
                                  Text("1-0-1 After Food"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (value){
                  setState(() {
                    thirdValue = value;
                  });
                },
                value: thirdValue,
              ),
              Expanded(
                child: Card(
                  elevation: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text("CAPSULE Amoxicillin 250", style: TextStyle(fontSize: 17,),)
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("DURATION", style: TextStyle(color: Colors.grey),),
                                Text("4 day(s)")
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("FREQUENCY", style: TextStyle(color: Colors.grey),),
                                  Text("1-0-1 After Food"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (value){
                  setState(() {
                    forthValue = value;
                  });
                },
                value: forthValue,
              ),
              Expanded(
                child: Card(
                  elevation: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text("CAPSULE Amoxicillin 250", style: TextStyle(fontSize: 17,),)
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("DURATION", style: TextStyle(color: Colors.grey),),
                                Text("4 day(s)")
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("FREQUENCY", style: TextStyle(color: Colors.grey),),
                                  Text("1-0-1 After Food"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),

          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (value){
                  setState(() {
                    continueValue = value;
                  });
                },
                value: continueValue,
              ),

              Text("Is it continuous medication?", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
            ],
          ),

          Divider(
            thickness: 1,
            color: Colors.grey,
          ),

          MaterialButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => InvoiceDetailsPage())
              );
            },
            minWidth: MediaQuery.of(context).size.width*0.7,
            height: 45,
            color: Color(0xff2d79e6),
            child: Text("Save & Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22.5)
            ),
          ),

          SizedBox(height: 150,)
        ],
      ),
    );
  }

  Widget personalized(){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (value){
                  setState(() {
                    fifthValue = value;
                  });
                },
                value: fifthValue,
              ),
              Expanded(
                child: Card(
                  elevation: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text("CAPSULE Amoxicillin 250", style: TextStyle(fontSize: 17,),)
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("DURATION", style: TextStyle(color: Colors.grey),),
                                Text("4 day(s)")
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("FREQUENCY", style: TextStyle(color: Colors.grey),),
                                  Text("1-0-1 After Food"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (value){
                  setState(() {
                    sixthValue = value;
                  });
                },
                value: sixthValue,
              ),
              Expanded(
                child: Card(
                  elevation: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Text("CAPSULE Amoxicillin 250", style: TextStyle(fontSize: 17,),)
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("DURATION", style: TextStyle(color: Colors.grey),),
                                Text("4 day(s)")
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("FREQUENCY", style: TextStyle(color: Colors.grey),),
                                  Text("1-0-1 After Food"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),

          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (value){
                  setState(() {
                    continueValue = value;
                  });
                },
                value: continueValue,
              ),

              Text("Is it continuous medication?", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
            ],
          ),

          Divider(
            thickness: 1,
            color: Colors.grey,
          ),

          MaterialButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => InvoiceDetailsPage())
              );
            },
            minWidth: MediaQuery.of(context).size.width*0.7,
            height: 45,
            color: Color(0xff2d79e6),
            child: Text("Save & Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22.5)
            ),
          ),

          SizedBox(height: 150,)
        ],
      ),
    );
  }
}