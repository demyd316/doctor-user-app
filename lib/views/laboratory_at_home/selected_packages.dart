import 'package:doctorgo_doctor/views/laboratory_at_home/laboratory_time_slot.dart';
import 'package:flutter/material.dart';

class SelectedPackages extends StatefulWidget {
  @override
  _SelectedPackagesState createState() => _SelectedPackagesState();
}

class _SelectedPackagesState extends State<SelectedPackages> {


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
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 110.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Book test & packages online...", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
                          const Color(0xff2d79e6),
                          const Color(0xff093d87)
                        ],
                        stops: [0.0, 1.0],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        margin: EdgeInsets.only(top: 85, bottom: 20),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("T3-T4-TSH", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                      Row(
                                        children: <Widget>[
                                          Text("\$20", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                                          SizedBox(width: 25),
                                          Icon(Icons.delete_outline, color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Iron Deficiency Profile", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                      Row(
                                        children: <Widget>[
                                          Text("\$28", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                                          SizedBox(width: 25),
                                          Icon(Icons.delete_outline, color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Liver Function Tests", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                      Row(
                                        children: <Widget>[
                                          Text("\$40", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                                          SizedBox(width: 25),
                                          Icon(Icons.delete_outline, color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Liver Function Tests", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                      Row(
                                        children: <Widget>[
                                          Text("\$40", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                                          SizedBox(width: 25),
                                          Icon(Icons.delete_outline, color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Total", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Padding(
                                        padding: EdgeInsets.only(right: 40),
                                        child: Text("\$88", style: TextStyle(fontWeight: FontWeight.bold),)
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

                  Padding(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: MaterialButton(
                      onPressed: (){
                      },
                      height: 50, 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.add),
                          Text(
                            "Add more tests",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ],
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
                ], 
              ),
            ),

            Positioned(
              bottom: 10,
              child: Container(
                width: MediaQuery.of(context).size.width*0.9,
                margin: EdgeInsets.only(right: 10, left: 20),
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color.fromRGBO(61, 140, 255, 1), ),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text("\$300", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => LaboratoryTimeSlot()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width/2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(61, 140, 255, 1),
                          borderRadius: BorderRadius.circular(25)
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
                child: Icon(Icons.close, color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}