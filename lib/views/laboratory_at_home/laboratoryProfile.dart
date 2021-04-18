import 'package:doctorgo_doctor/views/laboratory_at_home/laboratoryBook.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LaboratoryProfile extends StatefulWidget {
  @override
  _LaboratoryProfileState createState() => _LaboratoryProfileState();
}

class _LaboratoryProfileState extends State<LaboratoryProfile> {

  bool serviceVisible;

  @override
  void initState() {
    serviceVisible = false;
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
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 110.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("205 Diagnostic tabs in mum...", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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

                  
                  SizedBox(
                    height: 40,
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
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 100,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 17, 
                              width: 17, 
                              child: Image.asset("assets/images/cup_gray.png",)
                            ),
                            Text("  MBBS, DOMS, MS", style: TextStyle(color: Colors.grey, fontSize: 12,),)
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 17, 
                              width: 17, 
                              child: Image.asset("assets/images/user_gray.png",)
                            ),
                            Text("  Ophthaimologist", style: TextStyle(color: Colors.grey, fontSize: 12),)
                            
                          ],
                        ),

                        Text("10 years old", style: TextStyle(color: Colors.grey, fontSize: 12),)
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 200),
                  elevation: 3,
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
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text("SERVICES", style: TextStyle(color: Colors.grey),),
                          ),

                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text("Ophthalmology", style: TextStyle(color: Colors.grey),),
                          ),

                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text("Glaucoma", style: TextStyle(color: Colors.grey),),
                          ),

                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text("Cataract", style: TextStyle(color: Colors.grey),),
                          ),

                          Visibility(
                            visible: serviceVisible,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text("Ophthalmology", style: TextStyle(color: Colors.grey),),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text("Glaucoma", style: TextStyle(color: Colors.grey),),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text("Cataract", style: TextStyle(color: Colors.grey),),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text("Ophthalmology", style: TextStyle(color: Colors.grey),),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text("Glaucoma", style: TextStyle(color: Colors.grey),),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text("Cataract", style: TextStyle(color: Colors.grey),),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text("Ophthalmology", style: TextStyle(color: Colors.grey),),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  serviceVisible = !serviceVisible;
                                });
                              },
                              child: Text(serviceVisible == false ? "ALL SERVICES" : "LESS SERVICES", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
                            ),
                          ),

                          Divider(
                            thickness: 1,
                          ),

                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text("92/6, 3rd Floor, Outor Ring Rood, Chandra Layout"),
                          ),

                          Container(
                            height: 100,
                            child: Center(
                              child: Image.asset("assets/images/map01.png"),
                            ),
                          ),

                          Divider(
                            thickness: 1,
                          ),

                          Text("Photos", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                          Container(
                            height: 60,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 80,
                                      child: Image.asset("assets/images/therapist_img1.jpeg", fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 80,
                                      child: Image.asset("assets/images/therapist_img2.jpeg", fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 80,
                                      child: Image.asset("assets/images/therapist_img3.png", fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 80,
                                      child: Image.asset("assets/images/therapist_img4.jpeg", fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 20),
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
                                  child: Text("Give Feedback", style: TextStyle(color: Color.fromRGBO(61, 140, 255, 1),),),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (_) => LaboratoryBook()),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width*2/5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("Book", style: TextStyle(color: Colors.white),),
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

                        ],
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