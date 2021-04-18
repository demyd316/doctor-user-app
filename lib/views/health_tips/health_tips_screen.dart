import 'package:doctorgo_doctor/views/health_tips/health_tip_screen.dart';
import 'package:flutter/material.dart';
class HealthTipsScreen extends StatefulWidget {
  @override
  _HealthTipsScreenState createState() => _HealthTipsScreenState();
}

class _HealthTipsScreenState extends State<HealthTipsScreen> {
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
              margin: EdgeInsets.only(top: 120, left: 30,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 230,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: healthTip,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text("Popular", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)
                  ),

                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(right: 20, left: 10),
                      child: MediaQuery.removePadding(
                        removeTop: true,
                        context: context,
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: popularTip,
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
                  Text("Health tips", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
          ],
        ),
      ),
    );
  }

  Widget healthTip(BuildContext context, int index){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => HealthTipScreen())
        );
      },
      child: Stack(
        children: <Widget>[
          Container(
            height: 230,
            width: MediaQuery.of(context).size.width*0.6,
            margin: EdgeInsets.only(right: 20),
            child: ClipRRect(
              child: Image.asset(
                "assets/images/sittingman.jpg",
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            right: 30,
            top: 10,
            child: Icon(Icons.bookmark_border, color: Colors.white,),
          ),

          Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              width: MediaQuery.of(context).size.width*0.45,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text("Why The Freelance Life May Get Easier", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),)
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 25,
                        height: 25,
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/images/user.jpg",
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Ted Milano", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                            Row(
                              children: <Widget>[
                                Image.asset("assets/icon/clock.png", width: 12,),
                                Text(" 25sec ago", style: TextStyle(color: Colors.grey, fontSize: 12),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget popularTip(BuildContext context, int index){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => HealthTipScreen())
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 90,
              width: 90,
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/sittingman.jpg",
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Nutrition", style: TextStyle(fontSize: 16, color: Color.fromRGBO(128, 2, 2, 1)),),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: Text("The best foods for children under 5", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset("assets/icon/clock.png", width: 15), 
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 10),
                          child: Text("13 sec ago", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),),
                        ),
                        Image.asset("assets/icon/like.png", width: 15), 
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("748", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}