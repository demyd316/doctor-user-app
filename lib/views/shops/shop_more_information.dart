import 'package:flutter/material.dart';

class ShopMoreInformation extends StatefulWidget {
  @override
  _ShopMoreInformationState createState() => _ShopMoreInformationState();
}

class _ShopMoreInformationState extends State<ShopMoreInformation> {

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
              margin: EdgeInsets.only(top: 225, left: 8, right: 8 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 5),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Color(0xff14a231),
                            borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ),
                      Text("Verified by", style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text("- RUC")
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, bottom: 25),
                    child: Text("- Kjksfdjkg")
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
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

                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("feedback".toUpperCase(), style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700,),)
                  ), 

                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text("Very good - courteous and efficient staff", style: TextStyle(fontWeight: FontWeight.w700,),)
                        ), 
                        Text("Jitu Rout - 2 years ago", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 12),), 
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text("Very good - courteous and efficient staff", style: TextStyle(fontWeight: FontWeight.w700,),)
                        ), 
                        Text("Jitu Rout - 2 years ago", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 12),), 
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text("Very good - courteous and efficient staff", style: TextStyle(fontWeight: FontWeight.w700,),)
                        ), 
                        Text("Jitu Rout - 2 years ago", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 12),), 
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                      ],
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
                    height: 215.0,
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
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 85),
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/images/medical_store1.jpg", width: 70, height: 85, fit: BoxFit.cover,)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 100, right: 75),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text("North Shore Cardiac Imaging, P.C.", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 15),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text("89% (4394 votes)", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),)
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 8, right: 5),
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(69, 252, 3, 1),
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                              ),
                              Text("Open", style: TextStyle(color: Color.fromRGBO(69, 252, 3, 1)),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text("09:00 - 21:00", style:TextStyle(color: Color.fromRGBO(69, 252, 3, 1)))
                        )
                      ],
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
          ],
        ),
      ),
    );
  }
}