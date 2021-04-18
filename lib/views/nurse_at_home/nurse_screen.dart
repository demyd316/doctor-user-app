import 'package:doctorgo_doctor/views/nurse_at_home/services_screen.dart';
import 'package:flutter/material.dart';

class NurseScreen extends StatefulWidget {
  @override
  _NurseScreenState createState() => _NurseScreenState();
}

class _NurseScreenState extends State<NurseScreen> {

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
              height: 200.0,
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

            Padding(
              padding: EdgeInsets.only(top: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Select a Time Slot", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 85,
                      ),

                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 30),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 80, 
                                        width: 80,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage("assets/images/nurse_profile.jpg"),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Text("Nurse's name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  child: Stack(
                                    children: <Widget>[
                                      Center(
                                        child: Text("Today, 8 Dec"),
                                      ),
                                      Positioned(
                                        right: 10,
                                        child: Container(
                                          height: 25,
                                          width: 25,
                                          child: FloatingActionButton(
                                            heroTag: "go",
                                            backgroundColor: Colors.white,
                                            onPressed: (){
                                            },
                                            child: Icon(Icons.arrow_forward_ios, size: 15, color: Colors.black,),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  height: 50,
                                  child: Center(
                                    child: Text("No slots available for today")
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 20, right: 20),
                                  child: MaterialButton(
                                    color: Color(0xff2d79e6),
                                    onPressed: () {

                                    },
                                    height: 45,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          'Next day availabilty on Sun, 09',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                          ),
                                        )
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 20, bottom: 20),
                                  child: Text("OR"),
                                ),

                                FloatingActionButton(
                                  heroTag: "go2",
                                  backgroundColor: Color(0xff2d79e6),
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (_) => ServicesScreen()),
                                    );
                                  },
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
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
}