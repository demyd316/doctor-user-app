import 'package:doctorgo_doctor/views/medical_specialities/allFeedbacksPage.dart';
import 'package:doctorgo_doctor/views/nurse_at_home/nurse_screen.dart';
import 'package:flutter/material.dart';
class NurseProfile extends StatefulWidget {
  @override
  _NurseProfileState createState() => _NurseProfileState();
}

class _NurseProfileState extends State<NurseProfile> {

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
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
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
                                child: Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                              ),
                              Text('Motto "klhasdhas askohaskhad a"', style: TextStyle(color: Colors.grey),), 
                              Padding(
                                padding: EdgeInsets.only(top: 15, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("26 years Experience", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),),
                                    Text("89% (4396 votes)", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12),)
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  MaterialButton(
                                    color: Color(0xff2d79e6),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => NurseScreen())
                                      );
                                    },
                                    height: 25,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          'BOOK',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Roboto Medium',
                                            color: Colors.white,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width*0.9,
                            child: DefaultTabController(
                              length: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
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
                        backgroundImage: AssetImage("assets/images/nurse_profile.jpg"),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width*0.9,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Text("FEEDBACK".toUpperCase(), style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),

                Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Text("Very good - courteious and efficient staff", style: TextStyle(fontWeight: FontWeight.bold),), 
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Jitu Rout - 2 years ago", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w800),)
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => AllFeedbacksPage())
                    );
                  },
                  child: Text("All feedback".toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(38, 188, 174, 1)),)
                ),

                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        children: <Widget>[
                          Text("services".toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                        ],
                      ),
                    ),

                    Text("Ophthaimology", style: TextStyle(fontWeight: FontWeight.bold),),

                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Glaucoma", style: TextStyle(fontWeight: FontWeight.bold),)
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Cataract", style: TextStyle(fontWeight: FontWeight.bold),)
                    ),
                  ],
                ),

                Visibility(
                  visible: serviceVisible,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      
                      Text("Ophthaimology", style: TextStyle(fontWeight: FontWeight.bold),),

                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text("Glaucoma", style: TextStyle(fontWeight: FontWeight.bold),)
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text("Cataract", style: TextStyle(fontWeight: FontWeight.bold),)
                      ),

                      Text("Ophthaimology", style: TextStyle(fontWeight: FontWeight.bold),),

                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text("Glaucoma", style: TextStyle(fontWeight: FontWeight.bold),)
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text("Cataract", style: TextStyle(fontWeight: FontWeight.bold),)
                      ),

                      Text("Ophthaimology", style: TextStyle(fontWeight: FontWeight.bold),),

                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text("Glaucoma", style: TextStyle(fontWeight: FontWeight.bold),)
                      ),

                      Text("Cataract", style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),



                GestureDetector(
                  onTap: (){
                    setState(() {
                      serviceVisible = !serviceVisible;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(serviceVisible == false ? "All services".toUpperCase() : "Less services".toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(38, 188, 174, 1)),)
                  )
                ),

                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Text("specialization".toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                    ],
                  ),
                ),

                Text("Dermitologist", style: TextStyle(fontWeight: FontWeight.bold),),

                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("Trichologist", style: TextStyle(fontWeight: FontWeight.bold),)
                ),

                Text("Cosrnetologist", style: TextStyle(fontWeight: FontWeight.bold),),

                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),

                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ],
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