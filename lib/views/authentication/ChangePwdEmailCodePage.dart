import 'package:doctorgo_doctor/views/authentication/NewPasswordPage.dart';
import 'package:flutter/material.dart';

class ChangePwdEmailCodePage extends StatefulWidget {
  @override
  _ChangePwdEmailCodePageState createState() => _ChangePwdEmailCodePageState();
}


class _ChangePwdEmailCodePageState extends State<ChangePwdEmailCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(top: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close, color: Colors.grey,)
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text("Enter code", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ),
              Text("* * * * * *", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff3c94ff)),),
              Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text("We send an email to sant@hotmail.com\nwith a 6-digit verification code", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700), textAlign: TextAlign.center,)
              ),
              Card(
                elevation: 3,
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 40,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1, color: Colors.black)),
                            ),
                          ),

                          Container(
                            width: 40,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1, color: Colors.black)),
                            ),
                          ),

                          Container(
                            width: 40,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1, color: Colors.black)),
                            ),
                          ),

                          Container(
                            width: 40,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1, color: Colors.black)),
                            ),
                          ),

                          Container(
                            width: 40,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1, color: Colors.black)),
                            ),
                          ),

                          Container(
                            width: 40,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1, color: Colors.black)),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => NewPasswordPage())
                            );
                          },
                          height: 45,
                          minWidth: MediaQuery.of(context).size.width*0.75,
                          color: Color(0xff3c94ff),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Image.asset("assets/icon/check1.png", color: Colors.transparent, width: 20)
                              ),
                              Text("Submit", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                              Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Image.asset("assets/icon/check1.png", width: 20)
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 25),
                child: Text("Did not receive the code?", style: TextStyle(fontWeight: FontWeight.w500),)
              ),
              GestureDetector(
                onTap: (){

                },
                child: Text("Re-send", style: TextStyle(fontSize: 15, color: Color(0xff3c94ff), fontWeight: FontWeight.bold))
              ),
            ],
          ),
        ),
      ),
    );
  }
}