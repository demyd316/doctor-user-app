import 'package:doctorgo_doctor/views/custom/create_account_or_not_modal.dart';
import 'package:doctorgo_doctor/views/laboratory_at_home/laboratory_my_child.dart';
import 'package:doctorgo_doctor/views/payment_method.dart';
import 'package:flutter/material.dart';
class OnlineDoctorRequest extends StatefulWidget {
  @override
  _OnlineDoctorRequestState createState() => _OnlineDoctorRequestState();
}

class _OnlineDoctorRequestState extends State<OnlineDoctorRequest> {
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
              padding: EdgeInsets.only(top: 125),
              child: Card(
                elevation: 3,
                child: Container(
                  padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),  
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 80,
                              margin: EdgeInsets.only(right: 50, bottom: 25),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/therapist_img3.png"),
                              ),
                            ),
                            Text("Bio Pharma Laboratory", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),),
                          ],
                        ),

                        Text(
                          "Who is this visit for?", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                        ),

                        Container(
                          height: 110,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: 65,
                                width: 65,
                                child: CircleAvatar(
                                  backgroundColor: Color.fromRGBO(21, 79, 165, 1),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Container(
                                        height: 45,
                                        width: 45,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage("assets/images/profile3.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              MaterialButton(
                                color: Color.fromRGBO(21, 79, 165, 1),
                                onPressed: (){},
                                child: Text(
                                  "John Smith",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => PaymentMethod()),
                                  );
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios, color:  Color.fromRGBO(211, 198, 199, 1),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color.fromRGBO(211, 198, 199, 1), width: 2),
                            borderRadius: BorderRadius.circular(5)
                          ),
                        ),

                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => LaboratoryMyChild()),
                            );
                          },
                          child: Container(
                            height: 110,
                            margin: EdgeInsets.only(top: 15),
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                FloatingActionButton(
                                  backgroundColor: Color.fromRGBO(20, 28, 232, 1),
                                  onPressed: (){},
                                  child: Icon(Icons.add, size: 40,),
                                ),
                                
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("My child", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text("Under 18", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),)
                                    )
                                  ],
                                ),
                                
                                Icon(
                                  Icons.arrow_forward_ios, color:  Color.fromRGBO(211, 198, 199, 1),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color.fromRGBO(211, 198, 199, 1), width: 2),
                              borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: (){
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => CreatAccountOrNotModal(),
                            );
                          },
                          child: Container(
                            height: 110,
                            margin: EdgeInsets.only(top: 15),
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "Someone else?\nIf the patient is over 18, they need to create their own account, even if they are a dependent on your health plan",
                                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
                                  ),
                                ),
                                
                                Padding(
                                  padding: EdgeInsets.only(left: 45),
                                  child: Icon(
                                    Icons.arrow_forward_ios, color:  Color.fromRGBO(211, 198, 199, 1),
                                  ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color.fromRGBO(211, 198, 199, 1), width: 2),
                              borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 110.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Book test & packages online...", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 43, left: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.close, color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}