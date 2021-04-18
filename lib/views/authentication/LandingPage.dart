import 'package:doctorgo_doctor/views/authentication/SignInPage.dart';
import 'package:doctorgo_doctor/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int _current = 0;
  String languageVal = "English";

  List imgList = [
    {
      "title" : "See A Doctor",
      "subtitle": "no Waiting",
      "image" : "assets/images/superdoctora2.png",
      "description" : "Good to hear from you!\nYou're about to enter a new world of\nmedical management,\nwe have many surprise for you"
    },

    {
      "title" : "See A Doctor",
      "subtitle": "no Waiting",
      "image" : "assets/images/Medico.png",
      "description" : "Find the country's greatest and\nmost professional doctors,\n just one click away"
    },

    {
      "title" : "Pay & Buy Online",
      "subtitle": "Medical Cosultations\nPharmacies and many more",
      "image" : "assets/images/Comprar2.png",
      "description" : "Prescription purchase\nMedical Supplies\nDelivery & Pickup\nHealth insurance and more"
    },

    {
      "title" : "Nursing",
      "subtitle": "no Waiting",
      "image" : "assets/images/Enfermeras.png",
      "description" : "Quick, easy and no waiting,\nyou can request nursing\nservices at home"
    },

    {
      "title" : "Laboratory",
      "subtitle": "",
      "image" : "assets/images/Laboratory.png",
      "description" : "Do you want to schedule an appointment\nfor tests or lab work?\nAt home or in person?\nDo it in a few seconds with the lat of your choice."
    },
  ];

  @override
  Widget build(BuildContext context) {
    final width = getWidth(context);
    final height = getHeight(context);

    List<T> map<T>(List list, Function handler) {
      List<T> result = [];
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }

      return result;
    }


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignInPage())),
        child: Text("Next"),
      ),
      body: Container(
        decoration: scaffoldBackgroundDecoration,
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*0.8,
                child: CarouselSlider(
                  height: MediaQuery.of(context).size.height*0.8,
                  items: imgList.map((item) => Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Text(
                            '${item['title']}',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 30,
                              color: Color(0xff2062c1),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          '${item['subtitle']}',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 19,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset("${item['image']}", fit: BoxFit.cover, height: height*0.45),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "${item['description']}",
                              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )).toList(),
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  viewportFraction: 1.0,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              
              GestureDetector(
                onTap: (){
                  if(languageVal == "English") {
                    setState(() {
                      languageVal = "Spanish";
                    });
                  }

                  else {
                    setState(() {
                      languageVal = "English";
                    });
                  }
                },
                child: Container(
                  height: 50,
                  child: languageVal == "English" ? Image.asset("assets/icon/cambiar(3).png") : Image.asset("assets/icon/cambiar(4).png"),
                ),
              ),

              Container(
                // Indicator Container
                height: MediaQuery.of(context).size.height/15,
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: map<Widget>(
                    imgList,
                    (index, url) {
                      return Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(Icons.lens, size: 12, color: _current == index ? Colors.black : Colors.grey)
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: height * 0.1)
            ],
          ),
        ),
      ),
    );
  }
}
