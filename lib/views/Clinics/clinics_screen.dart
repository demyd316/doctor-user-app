import 'package:doctorgo_doctor/views/Clinics/clinic_screen.dart';
import 'package:flutter/material.dart';
class ClinicsScreen extends StatefulWidget {
  @override
  _ClinicsScreenState createState() => _ClinicsScreenState();
}

class _ClinicsScreenState extends State<ClinicsScreen> {

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
              padding: EdgeInsets.only(top: 150, right: 10, left: 10),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 3,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'Clinics nearby',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 19,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: clinic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),

                  Expanded(
                    child: Container(
                      child: MediaQuery.removePadding(
                        removeTop: true,
                        context: context,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: topClinic,
                        ),
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
                  Text("Clinics", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
                    height: 50,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText: "Search",
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

  Widget clinic(BuildContext context, int index) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ClinicScreen()),
        );
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 220,
                height: 80,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Image(
                      image: AssetImage("assets/images/therapist_img2.jpeg")),
                ),
              ),
              Divider(),
              Text(
                'Ashiwini Eye Clinic',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  color:
                      const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                width: 220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 30,
                          height: 30,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/women_profile.png"),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.only(left: 3, right: 3),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/profile3.png"),
                          ),
                        ),

                        Text("+2 more", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/images/location_blue.png"),
                          width: 13,
                        ),
                        Text(
                          'Anheri East',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 13
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("SPONSORED", style: TextStyle(fontSize: 12, color: Colors.orange[300]),),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ClinicScreen()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 5,bottom: 5),
                        child: Container(
                          padding: EdgeInsets.only(left: 6, right: 6, top: 3, bottom: 3),
                          alignment: Alignment.center,
                          child: Text(
                            'Contact Clinic',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: const Color(
                                  0xff134b9c),
                              fontWeight:
                              FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                13.0),
                            color: const Color(0xffffffff),
                            border: Border.all(
                              width: 0.7,
                              color: const Color(
                                  0xff124b9b)),
                          ),
                        ),
                      )
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget topClinic(BuildContext context, int index){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_)=> ClinicScreen())
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        color: Colors.transparent,
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                        const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80, 
                        width: 80,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/therapist_img3.png"),
                        ),
                      ),
                    ),
                    Text(
                      "26 Votes", 
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
                    ),

                    Text(
                      "26 Feedback"
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Name Clinic", style: TextStyle(fontWeight: FontWeight.bold,),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text("MBBS,DOMS,MS-Opthalmology",
                        style: TextStyle(fontSize: 12, color: Colors.grey)
                    )),

                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text("Opthaimologist",
                        style: TextStyle(fontSize: 12, color: Colors.grey)
                    )),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                        "26 years of experience",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                    )),
                    
                    Padding(
                      padding: EdgeInsets.only(top: 3, bottom: 3),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 15, 
                            width: 15,
                            child: Image.asset("assets/images/_doctor_green.png",),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text("5 Doctor", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                          ),
                          Container(
                            height: 15, 
                            width: 15,
                            child: Image.asset("assets/images/location_blue.png",),
                          ),
                          Text("Andheri East", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 3, bottom: 3),
                      child: Text("\$500 onwards", style: TextStyle(fontWeight: FontWeight.bold),)
                    ), 

                    Row(
                      children: <Widget>[
                        Text(
                          "LASIK Eye surr...",
                          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey, fontSize: 12),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "Anterior Seq...",
                          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey, fontSize: 12),
                        ),

                        SizedBox(width: 10),

                        Text(
                          "+2 More",
                          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    
                    ],
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 60, right: 20),
                  child: Text("SPONSORED", style: TextStyle(fontSize: 12, color: Colors.orange[300]),),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                    child: MaterialButton(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_)=> ClinicScreen())
                      );
                    },
                    height: 35,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Contact Clinic',
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
              margin: EdgeInsets.only(left: 17, right: 17),
              child: Divider(thickness: 1,)
            ),
          ],
        ),
      ),
    );
  }
}