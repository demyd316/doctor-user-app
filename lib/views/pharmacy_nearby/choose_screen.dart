import 'package:doctorgo_doctor/views/pharmacy_nearby/buy_prescription_screen.dart';
import 'package:flutter/material.dart';
class ChooseScreen extends StatefulWidget {
  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 45),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.close, color: Colors.grey,)
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Choose", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 100),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: option,
                ),
              )
            ),
          ],
        ),
      ),
    );
  }

  Widget option(BuildContext context, int index){
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => BuyPrescriptionScreen())
        );
      },
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("17", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),),
                  Text("Nov", style: TextStyle(color: Colors.grey),),
                  Text("2020", style: TextStyle(fontWeight: FontWeight.w700),)
                ],
              ),
            ),

            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 55,
                        width: 55,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/women_profile.png"),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Zean Ronen", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          Text("MBBS, DOMS, MS-Opthal..", style: TextStyle(color: Colors.grey, fontSize: 12),),
                          Text("Opthalmologist", style: TextStyle(color: Colors.grey, fontSize: 12),),
                          Text("26 years of experience", style: TextStyle(color: Colors.grey, fontSize: 12),),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 13,
                                width: 13,
                                child: Image.asset('assets/images/location_blue.png'),
                              ),
                              Text("Andheri East", style: TextStyle(color: Colors.grey, fontSize: 12),)
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  MaterialButton(
                    onPressed: (){

                    },
                    minWidth: 200,
                    child: Text("Diagnistic"),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: Colors.grey)
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 2,
              child: Icon(Icons.arrow_forward_ios, color: Colors.grey,)
            ),
          ],
        ),
      ),
    );
  }
}