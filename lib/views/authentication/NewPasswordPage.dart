import 'package:doctorgo_doctor/views/authentication/ForgotPasswordPage.dart';
import 'package:doctorgo_doctor/views/authentication/LoginPage.dart';
import 'package:flutter/material.dart';

class NewPasswordPage extends StatefulWidget {
  @override
  _NewPasswordPageState createState() => _NewPasswordPageState();
}


class _NewPasswordPageState extends State<NewPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(top: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ForgotPasswordPage())
                  );
                },
                child: Icon(Icons.close, color: Colors.grey,)
              ),
              Center(
                child: Image.asset("assets/images/DrGo_PNG.png", width: MediaQuery.of(context).size.width*0.4,)
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(child: Text("Enter a new password", style: TextStyle(fontSize: 25, color: Colors.grey, fontWeight: FontWeight.bold),))
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: const Color(0xff8193ae),
                    letterSpacing: 0.644,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45.0,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Container(
                          padding: EdgeInsets.all(2),
                          child: Image.asset("assets/icon/email.png")
                        ),
                        border: InputBorder.none,
                      )
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29.0),
                    color: const Color(0xd1e3eaf5),
                    border:
                        Border.all(width: 5.0, color: const Color(0x0c707070)),
                  ),
                ),
              ),

              Center(
                child: Text(
                  "Enter 8 to 15 characters.\nMust contain 1 number, 1 lower case and 1 upper case letter",
                  style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 70, top: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginPage())),
                    child: Container(
                      width: 288.0,
                      height: 52.0,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Image.asset("assets/icon/check1.png", color: Colors.transparent, width: 20)
                          ),
                          Text(
                            'Save',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Image.asset("assets/icon/check1.png", width: 20)
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(79.0),
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(1.05, 1.08),
                          colors: [const Color(0xff3c94ff), const Color(0xff3e83ff)],
                          stops: [0.0, 1.0],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
