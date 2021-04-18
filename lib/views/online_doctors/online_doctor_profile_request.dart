import 'package:doctorgo_doctor/views/medical_specialities/allFeedbacksPage.dart';
import 'package:doctorgo_doctor/views/online_doctors/online_doctor_request.dart';
import 'package:flutter/material.dart';
class OnlineDoctorProfileRequest extends StatefulWidget {
  @override
  _OnlineDoctorProfileRequestState createState() => _OnlineDoctorProfileRequestState();
}

class _OnlineDoctorProfileRequestState extends State<OnlineDoctorProfileRequest> {

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
                    height: 150.0,
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
                Column(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(top: 85),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        padding: EdgeInsets.all(12),
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Prime", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(0, 190, 170, 1)),), 
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Color.fromRGBO(254, 149, 56, 1),),
                                      Text("4.5"),
                                    ],

                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text("Jhon Smith", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              ),
                              Text("Doctor of Medicine", style: TextStyle(color: Colors.grey),),
                              Text("BSc, MBBS, DOVL, MD-Denmitologis", style: TextStyle(color: Colors.grey),), 
                              Padding(
                                padding: EdgeInsets.only(top: 15, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("16 years Experience", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                                    Text("89% (4394 votes)", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12),)
                                  ],
                                ),
                              ),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(text: 'In Climic Fees: ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                                        TextSpan(text: '\$10', style: TextStyle(fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  MaterialButton(
                                    color: Color(0xff2d79e6),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => OnlineDoctorRequest()),
                                      );
                                    },
                                    height: 25,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          'Request',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                          ),
                                        )
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ),
                    ),

                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width*0.9,
                            child: DefaultTabController(
                              length: 6,
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
                                      ), ), Tab(text: "EDUCATION",), Tab(text: "EXPERIENCE",), Tab(text: "PROFESSIONAL RECOGNITION",), Tab(text: "AFFILLATIONS",), Tab(text: "PROFESSIONAL REGISTER",)],
                                    ), 
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 8),
                                      child: TabBarView(children: [mainPage(), educationPage(), experiencePage(), recognitionPage(), affilliationsPage(), registerPage()])
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 90,
                  width: 90,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Container(
                      height: 85,
                      width: 85,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/doctor_profile.png"),
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


  Widget mainPage(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.fiber_manual_record, color: Colors.green, size: 20),
              Text("Verification done for".toUpperCase(), style: TextStyle(color: Colors.grey),),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text("- Medical License")
          ),

          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
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
                  child: Text("SPECIALIZATION", style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Dermitologist", style: TextStyle(fontWeight: FontWeight.bold)),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Trichologist", style: TextStyle(fontWeight: FontWeight.bold)),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Cosrnetologist", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text("ALSO PRACTICES AT", style: TextStyle(color: Colors.grey),),
                ),
                Container(
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
                                Text("Dr.Zan Chau", style: TextStyle(fontWeight: FontWeight.w700,),),
                                Text("Dermatologist", style: TextStyle(color: Colors.grey, fontSize: 13,),),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text("\$ 50", style: TextStyle(fontWeight: FontWeight.w700),)
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Color.fromRGBO(254, 149, 56, 1),),
                          Text("4.2"),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(bottom: 20),
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
                                Text("Dr.Zan Chau", style: TextStyle(fontWeight: FontWeight.w700,),),
                                Text("Dermatologist", style: TextStyle(color: Colors.grey, fontSize: 13,),),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text("\$50", style: TextStyle(fontWeight: FontWeight.w700,),)
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Color.fromRGBO(254, 149, 56, 1),),
                          Text("4.2"),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: Colors.grey)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget educationPage(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Universidad Sna Francisco de Quito, 2006, Medico general", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Universidad Sna Francisco de Quito, 2006, Medico general", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Universidad Sna Francisco de Quito, 2006, Medico general", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Universidad Sna Francisco de Quito, 2006, Medico general", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Universidad Sna Francisco de Quito, 2006, Medico general", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Universidad Sna Francisco de Quito, 2006, Medico general", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Universidad Sna Francisco de Quito, 2006, Medico general", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),

          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Universidad Sna Francisco de Quito, 2006, Medico general", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
        ],
      ),
    );
  }

  Widget experiencePage(){
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Hospital de la Salud, Jefe de agencia, 2003 - 2005, Chile", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Hospital de la Salud, Jefe de agencia, 2003 - 2005, Chile", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Hospital de la Salud, Jefe de agencia, 2003 - 2005, Chile", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Hospital de la Salud, Jefe de agencia, 2003 - 2005, Chile", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Hospital de la Salud, Jefe de agencia, 2003 - 2005, Chile", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Hospital de la Salud, Jefe de agencia, 2003 - 2005, Chile", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text("- Hospital de la Salud, Jefe de agencia, 2003 - 2005, Chile", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
          ),
          Padding(
            padding: EdgeInsets.only(top:5, bottom: 5),
            child: Text("- Hospital de la Salud, Jefe de agencia, 2003 - 2005, Chile", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)
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
