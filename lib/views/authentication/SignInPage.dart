import 'package:doctorgo_doctor/views/authentication/LoginPage.dart';
import 'package:doctorgo_doctor/constants.dart';
import 'package:doctorgo_doctor/views/authentication/RegisterInformation.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final height = getHeight(context);
    final width = getWidth(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Container(
        height: height,
        decoration: scaffoldBackgroundDecoration,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Image.asset("assets/images/DrGo_PNG.png", width: MediaQuery.of(context).size.width*0.4,)
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => LoginPage())
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: 316.9,
                        height: 52.7,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/icon/facebook.png", width: 30),
                            SizedBox(width: 10,),
                            Text(
                              'Facebook',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffd6e2f6),
                              offset: Offset(0, 13),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => LoginPage())
                        );
                      },
                      child: Container(
                        width: 316.9,
                        height: 52.7,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/icon/google.png", width: 30,),
                            SizedBox(width: 10,),
                            Text(
                              'Google',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xffd6e2f6),
                              offset: Offset(0, 13),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => LoginPage())
                        );
                      },
                      child: Container(
                        width: 316.9,
                        height: 52.7,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/icon/apple.png", width: 30,),
                            SizedBox(width: 10,),
                            Text(
                              'Apple',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xffd6e2f6),
                              offset: Offset(0, 13),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an account?", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => LoginPage())
                            );
                          },
                          child: Text(" Login", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff002bff)),)
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 65),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => RegisterInformation()),
                        );
                      },
                      child: Text("Register", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff002bff)),)
                    )
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("By continuing you agree to ", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Terms & Conditions", style: TextStyle(color: Color(0xff002bff), fontWeight: FontWeight.bold),)
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
