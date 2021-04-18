import 'package:doctorgo_doctor/views/health_insurance/insurance_screen.dart';
import 'package:flutter/material.dart';

class HealthInsurance extends StatefulWidget {
  @override
  _HealthInsuranceState createState() => _HealthInsuranceState();
}

class _HealthInsuranceState extends State<HealthInsurance> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 135),
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => InsuranceScreen()),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                              child: Container(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/images/lab.png"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80.0,
                            child: Text(
                              'Insurance name',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => InsuranceScreen()),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                              child: Container(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/images/lab.png"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80.0,
                            child: SizedBox(
                              width: 68.0,
                              child: Text(
                                'Insurance name',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 13,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => InsuranceScreen()),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              height: 50,
                              width: 50,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/images/lab.png"),
                                ),
                              ),
                            ),
                          SizedBox(
                            width: 80.0,
                            child: Text(
                              'Insurance name',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => InsuranceScreen()),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                              child: Container(
                                height: 40,
                                width: 40,
                                child: Image.asset("assets/images/lab.png"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 80.0,
                            child: Text(
                              'Insurance name',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => InsuranceScreen()),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              height: 50,
                              width: 50,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/images/lab.png"),
                                ),
                              ),
                            ),
                          SizedBox(
                            width: 80.0,
                            child: Text(
                              'Insurance name',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => InsuranceScreen()),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              height: 50,
                              width: 50,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(212, 230, 255, 1),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset("assets/images/lab.png"),
                                ),
                              ),
                            ),
                          SizedBox(
                            width: 80.0,
                            child: Text(
                              'Insurance name',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 13,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 110.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Find your best insurance company", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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

            Padding(
              padding: EdgeInsets.only(top: 43, left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back, color: Colors.white,),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 85),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText: "Search...",
                        contentPadding: EdgeInsets.all(0),
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}