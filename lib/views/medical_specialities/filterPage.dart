import 'package:flutter/material.dart';
class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {

  bool consultationFee;
  bool hospitalValue;
  bool bookingValue;
  String availableValue;
  String feeValue;
  String genderValue;

  @override
  void initState() {
    consultationFee = false;
    hospitalValue = false;
    bookingValue = false;
    availableValue = "anyDay";
    feeValue = "free";
    genderValue = "male";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 35, right: 20, left: 20),
        child:  SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Filter", style: TextStyle(fontSize: 16, color: Color(0xff0d438e), fontWeight: FontWeight.bold),),
                  Text("Clear Filter", style: TextStyle(color: Color(0xff0d438e)),)
                ],
              ),
              SizedBox(height: 20,),
              Card(
                child: Container(
                  padding: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text("Sort By", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            activeColor: Color(0xff18c4b1),
                            value: consultationFee,
                            onChanged: (value){
                              setState(() {
                                consultationFee = value;   
                              });
                            },
                          ),

                          Text("Consultation Fee", style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),

              Card(
                child: Container(
                  padding: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text("Availability", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                      ),

                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Color(0xff18c4b1),
                            value: "anyDay",
                            groupValue: availableValue,
                            onChanged: (String value) {
                              setState(() {
                                availableValue = value;
                              });
                            },
                          ),
                          Text("Available Any Day", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Color(0xff18c4b1),
                            value: "today",
                            groupValue: availableValue,
                            onChanged: (String value) {
                              setState(() {
                                availableValue = value;
                              });
                            },
                          ),
                          Text("Available Today", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Color(0xff18c4b1),
                            value: "threeDays",
                            groupValue: availableValue,
                            onChanged: (String value) {
                              setState(() {
                                availableValue = value;
                              });
                            },
                          ),
                          Text("Available in next 3 days", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Color(0xff18c4b1),
                            value: "weekend",
                            groupValue: availableValue,
                            onChanged: (String value) {
                              setState(() {
                                availableValue = value;
                              });
                            },
                          ),
                          Text("Available coming weekend", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),

              Card(
                child: Container(
                  padding: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text("In Hospital", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            activeColor: Color(0xff18c4b1),
                            value: hospitalValue,
                            onChanged: (value){
                              setState(() {
                                hospitalValue = value;   
                              });
                            },
                          ),

                          Text("In Hospital", style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),

              Card(
                child: Container(
                  padding: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text("Online Booking", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                      ),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            activeColor: Color(0xff18c4b1),
                            value: bookingValue,
                            onChanged: (value){
                              setState(() {
                                bookingValue = value;   
                              });
                            },
                          ),

                          Text("Online Booking", style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),

              Card(
                child: Container(
                  padding: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text("Consultation Fee", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                      ),

                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Color(0xff18c4b1),
                            value: "free",
                            groupValue: feeValue,
                            onChanged: (String value) {
                              setState(() {
                                feeValue = value;
                              });
                            },
                          ),
                          Text("Free", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Color(0xff18c4b1),
                            value: "1-200",
                            groupValue: feeValue,
                            onChanged: (String value) {
                              setState(() {
                                feeValue = value;
                              });
                            },
                          ),
                          Text("1-200", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Color(0xff18c4b1),
                            value: "201-500",
                            groupValue: feeValue,
                            onChanged: (String value) {
                              setState(() {
                                feeValue = value;
                              });
                            },
                          ),
                          Text("201-500", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Color(0xff18c4b1),
                            value: "500-1000",
                            groupValue: feeValue,
                            onChanged: (String value) {
                              setState(() {
                                feeValue = value;
                              });
                            },
                          ),
                          Text("500-1000", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),

              Card(
                child: Container(
                  padding: EdgeInsets.only(top: 8, bottom: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text("Gender", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                      ),

                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Color(0xff18c4b1),
                            value: "male",
                            groupValue: genderValue,
                            onChanged: (String value) {
                              setState(() {
                                genderValue = value;
                              });
                            },
                          ),
                          Text("Male", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Color(0xff18c4b1),
                            value: "female",
                            groupValue: genderValue,
                            onChanged: (String value) {
                              setState(() {
                                genderValue = value;
                              });
                            },
                          ),
                          Text("Female", style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}