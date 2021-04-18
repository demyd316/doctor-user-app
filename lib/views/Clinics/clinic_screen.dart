import 'package:doctorgo_doctor/views/Clinics/clinic_book_day_slot.dart';
import 'package:doctorgo_doctor/views/medical_specialities/allFeedbacksPage.dart';
import 'package:doctorgo_doctor/views/medical_specialities/doctor_profile_book.dart';
import 'package:flutter/material.dart';
class ClinicScreen extends StatefulWidget {
  @override
  _ClinicScreenState createState() => _ClinicScreenState();
}

class _ClinicScreenState extends State<ClinicScreen> {

  bool serviceVisible;

  void initState() {
    serviceVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    child: Image.asset("assets/images/therapy.jpg", fit: BoxFit.cover,),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 35, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white,),
                  ),
                  Text("Ashwini Eye Clinic", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.favorite, color: Color.fromRGBO(0, 190, 171, 1),),
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 180),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Ashwini Eye Clinic", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),), 
                        Row(
                          children: <Widget>[
                            Container(
                              height: 12,
                              width: 12,
                              child: Image.asset("assets/images/location_blue.png"),
                            ),
                            Text("Andheri East", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.star, color: Color.fromRGBO(0, 190, 171, 1),),
                              Icon(Icons.star, color: Color.fromRGBO(0, 190, 171, 1),),
                              Icon(Icons.star, color: Color.fromRGBO(0, 190, 171, 1),),
                              Icon(Icons.star, color: Color.fromRGBO(0, 190, 171, 1),),
                              Icon(Icons.star, color: Color.fromRGBO(0, 190, 171, 1),),
                            ],
                          ),
                        ),

                        Expanded(
                          child: DefaultTabController(
                              length: 4,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(color: Colors.transparent),
                                    child: TabBar(
                                      isScrollable: true,
                                      labelColor: Colors.black,
                                      indicatorColor: Colors.grey,
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      tabs: [Tab( child: Row(
                                        children: <Widget>[
                                          Text("CLOSED TODAY", style: TextStyle(color: Colors.red),),
                                          Text(" 9:30AM 08:00PM ALL TIMING")
                                        ],
                                      ), ), Tab(text: "PROFESSIONAL RECOGNITION",), Tab(text: "AFFILLATIONS",), Tab(text: "PROFESSIONAL REGISTER",)],
                                    ), 
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height-330,
                                    margin: EdgeInsets.only(top: 8),
                                    child: TabBarView(children: [mainPage(), recognitionPage(), affilliationsPage(), registerPage()])
                                  ),
                                ],
                              ),
                          ),
                        ),
                      ],
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

  Widget mainPage(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              children: <Widget>[
                Container(
                  height: 20,
                  width: 20,
                  child: Image.asset('assets/images/location_blue.png'),
                ),
                Text("92/6, Std Floor, Oater Road Chardre Layout", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 12),), 
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 130,
            child: Image.asset("assets/images/map01.png")
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => DoctorProfileBook())
              );
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profile3.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Dr. Anila Dome", style: TextStyle(fontWeight: FontWeight.w700,),),
                            Text("Dermatologist", style: TextStyle(color: Colors.grey, fontSize: 13,),),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("\$50", style: TextStyle(fontWeight: FontWeight.w700, color: Color.fromRGBO(62, 206, 191, 1)),)
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ClinicBookDaySlot()),
                      );
                    },
                    height: 25,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Book',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto Medium',
                            color: Color.fromRGBO(62, 206, 191, 1),
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(
                          color: Color.fromRGBO(62, 206, 191, 1),
                          width: 1.0,
                        )),
                  ),
                ],
              ),

              
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (_) => DoctorProfileBook())
              );
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/profile3.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Dr. Sandeep maheta", style: TextStyle(fontWeight: FontWeight.w700,),),
                            Text("Dermatologist", style: TextStyle(color: Colors.grey, fontSize: 13,),),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("\$70", style: TextStyle(fontWeight: FontWeight.w700, color: Color.fromRGBO(62, 206, 191, 1)),)
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ClinicBookDaySlot()),
                      );
                    },
                    height: 25,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Book',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto Medium',
                            color: Color.fromRGBO(62, 206, 191, 1),
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(
                          color: Color.fromRGBO(62, 206, 191, 1),
                          width: 1.0,
                        )),
                  ),
                ],
              ),

              
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text("SERVICES", style: TextStyle(color: Colors.grey),),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text("Ophthaimology", style: TextStyle(fontWeight: FontWeight.bold)),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text("Glaucoma", style: TextStyle(fontWeight: FontWeight.bold)),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text("Cataract", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),

          Visibility(
            visible: serviceVisible,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Ophthaimology", style: TextStyle(fontWeight: FontWeight.bold)),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Glaucoma", style: TextStyle(fontWeight: FontWeight.bold)),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Cataract", style: TextStyle(fontWeight: FontWeight.bold)),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Ophthaimology", style: TextStyle(fontWeight: FontWeight.bold)),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Glaucoma", style: TextStyle(fontWeight: FontWeight.bold)),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Cataract", style: TextStyle(fontWeight: FontWeight.bold)),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Ophthaimology", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),

           GestureDetector(
             onTap: (){
               setState(() {
                 serviceVisible = !serviceVisible;
               });
             },
             child: Text(serviceVisible == false ? "ALL SERVICES" : "LESS SERVICES", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color:  Color.fromRGBO(24, 196, 177, 1)),)
            ),
                
            Divider(
              thickness: 1,
            ),

          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text("FEEDBACK", style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Very good - courteous and efficient staff", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text("Jitu Rout - 2 years ago", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),)
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => AllFeedbacksPage())
                    );
                  },
                  child: Text("ALL FEEDBACK", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color:  Color.fromRGBO(24, 196, 177, 1)),)
                ),
                
                Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 20, bottom: 15, left: 10, right: 10),
            height: 45,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color.fromRGBO(61, 140, 255, 1), ),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text("Give Feedback", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Color.fromRGBO(61, 140, 255, 1),)),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ClinicBookDaySlot()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*2/5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Continue", style: TextStyle(color: Colors.white),),
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
    );
  }
   Widget recognitionPage(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ministerio de Salud Publica, Medico destacado en la expecialidad", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ministerio de Salud Publica, Medico destacado en la expecialidad", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ministerio de Salud Publica, Medico destacado en la expecialidad", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ministerio de Salud Publica, Medico destacado en la expecialidad", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ministerio de Salud Publica, Medico destacado en la expecialidad", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ministerio de Salud Publica, Medico destacado en la expecialidad", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ministerio de Salud Publica, Medico destacado en la expecialidad", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ministerio de Salud Publica, Medico destacado en la expecialidad", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ministerio de Salud Publica, Medico destacado en la expecialidad", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ministerio de Salud Publica, Medico destacado en la expecialidad", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
        ],
      ),
    );
  }

  Widget affilliationsPage(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Name Health Insurance", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Name Health Insurance", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Name Health Insurance", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Name Health Insurance", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Name Health Insurance", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Name Health Insurance", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Name Health Insurance", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Name Health Insurance", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Name Health Insurance", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Name Health Insurance", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
        ],
      ),
    );
  }

  Widget registerPage(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ms823643, Ministerio de Salud", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ms823643, Ministerio de Salud", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ms823643, Ministerio de Salud", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ms823643, Ministerio de Salud", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ms823643, Ministerio de Salud", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ms823643, Ministerio de Salud", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ms823643, Ministerio de Salud", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ms823643, Ministerio de Salud", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Ms823643, Ministerio de Salud", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
        ],
      ),
    );
  }
}