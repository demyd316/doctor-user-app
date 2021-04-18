import 'package:doctorgo_doctor/views/authentication/ForgotPasswordPage.dart';
import 'package:doctorgo_doctor/views/authentication/RegisterInformation.dart';
import 'package:doctorgo_doctor/views/authentication/SignInPage.dart';
import 'package:doctorgo_doctor/views/tabs/Tabs.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
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
                    MaterialPageRoute(builder: (_) => SignInPage())
                  );
                },
                child: Icon(Icons.close, color: Colors.grey,)
              ),
              Center(
                child: Image.asset("assets/images/DrGo_PNG.png", width: MediaQuery.of(context).size.width*0.4,)
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(child: Text("Login", style: TextStyle(fontSize: 25, color: Colors.grey, fontWeight: FontWeight.bold),))
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'E-mail',
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
                    color: Color(0xd1e3eaf5),
                    border:
                        Border.all(width: 5.0, color: Color(0x0c707070)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Color(0xff8193ae),
                    letterSpacing: 0.644,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
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
                          child: Image.asset("assets/icon/password.png")
                        ),
                        suffixIcon: Image.asset("assets/icon/ojo.png", width: 30),
                        border: InputBorder.none,
                      )
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29.0),
                    color: Color(0xd1e3eaf5),
                    border:
                        Border.all(width: 5.0, color: Color(0x0c707070)),
                  ),
                ),
              ),
              
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ForgotPasswordPage()),
                  );
                },
                child: Text("Forgot Password", style: TextStyle(fontSize: 16, color: Color(0xff002bff)),)
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 20, top: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TabsPage())),
                    child: Container(
                      width: 288.0,
                      height: 52.0,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset("assets/icon/check1.png", color: Colors.transparent, width: 20)
                          ),
                          Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Image.asset("assets/icon/check1.png", width: 20)
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(79.0),
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(1.05, 1.08),
                          colors: [Color(0xff3c94ff), Color(0xff3e83ff)],
                          stops: [0.0, 1.0],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have account? ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (_) => RegisterInformation())
                        );
                      },
                      child: Text("Sign Up", style: TextStyle(fontSize: 16, color: Color(0xff002bff), fontWeight: FontWeight.bold),)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
