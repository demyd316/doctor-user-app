import 'package:doctorgo_doctor/views/nurse_at_home/nurse_profile.dart';
import 'package:doctorgo_doctor/views/nurse_at_home/nurse_screen.dart';
import 'package:flutter/material.dart';

class NurseAtHome extends StatefulWidget {
  @override
  _NurseAtHomeState createState() => _NurseAtHomeState();
}

class _NurseAtHomeState extends State<NurseAtHome> {

  List nearbyDoctors = [
    {
      "name": "Nurse's name",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
    {
      "name": "Dr Pooja Verma",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
    {
      "name": "Dr Pooja Verma",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
    {
      "name": "Dr Pooja Verma",
      "doctorId": "959483",
      "location": "longLat",
      "rating": 5
    },
  ];

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
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 143,
                  ),
                  Container(
                    padding: EdgeInsets.only(left:8, right: 8,),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Nurse near',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 19,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: nearbyDoctors
                                  .map((e) => GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (_) =>NurseProfile()),
                                        );
                                      },

                                        child: Card(
                                          child: Container(
                                            padding: EdgeInsets.all(8),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: CircleAvatar(
                                                    backgroundImage: AssetImage("assets/images/nurse_profile.jpg"),
                                                  ),
                                                ),
                                                Text(
                                                  '${e["name"]}',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 12,
                                                    color: Color(0xff000000),
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Container(
                                                  width: 77.0,
                                                  height: 23.0,
                                                  child: Center(child: Text("1.2km away", style: TextStyle(fontSize: 12, color: Color(0xff3d8bff),), )),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(15.0),
                                                    color:Color(0xffffffff),
                                                    border: Border.all( width: 1.0, color: Color(0xff3d8bff)),
                                                  ),
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.star,
                                                      color: Color.fromRGBO(254, 149, 56, 1),
                                                    ),
                                                    Text("${e['rating']}")
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                  ))
                                  .toList(),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: MediaQuery.removePadding(
                      removeTop: true,
                      context: context,
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: nurse,
                      ),
                    ),
                  )
                ], 
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 110.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Nurse at home", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
                  elevation:3,
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

  Widget nurse(BuildContext context, int index){
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => NurseProfile())
          );
        },
        child: Container(
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 70, 
                          width: 70,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/nurse_profile.jpg"),
                          ),
                        ),
                      ),
                      Text(
                        "36 Votes", style: TextStyle(fontSize: 12,),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "26 Feedback", style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold,),),
                      ),
                      Text("Motto", style: TextStyle(color: Colors.grey),),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text("26 years of experience", style: TextStyle(fontSize: 12, color: Colors.grey),)
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 15, 
                            width: 15,
                            child: Image.asset("assets/images/location_blue.png",),
                          ),
                          Text("Andheri East", style: TextStyle(color: Colors.grey),),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 3),
                        child: Row(
                          children: <Widget>[
                            Text("\$500 onwards", style: TextStyle(fontWeight: FontWeight.bold),),
                            
                          ],
                        ),
                      ), 

                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              "LASIK Eye surr...", style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),

                            Text(
                              "Anterior Seq...", style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),

                            Text(
                              "+2 More", style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("SPONSORED", style: TextStyle(fontSize: 12, color: Colors.orange[300]),),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                      child: MaterialButton(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => NurseProfile())
                        );
                      },
                      height: 35,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'Contact nurse',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto Medium',
                              color: Color(0xff2d79e6),
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(
                            color: Color(0xff2d79e6),
                            width: 1.0,
                          )),
                    ),
                  ),
                ],
              ),
              Container(
                child: Divider(thickness: 1,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}