import 'package:doctorgo_doctor/views/authentication/AccountInformation.dart';
import 'package:doctorgo_doctor/constants.dart';
import 'package:flutter/material.dart';

class MobileRegistration extends StatefulWidget {
  @override
  _MobileRegistrationState createState() => _MobileRegistrationState();
}

class _MobileRegistrationState extends State<MobileRegistration> {
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
        width: width,
        decoration: scaffoldBackgroundDecoration,
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage("assets/icon/Logo_black.png"),
            ),
            Text(
              'mobile number'.toUpperCase(),
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 25,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              width: 260.0,
              child: Text(
                'OTP will be sent to the entered\nmobile number',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: const Color(0xc4000000),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 291.0,
                height: 55.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "mobile number".toUpperCase()
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color(0xffffffff),
                  border: Border.all(width: 1.0, color: const Color(0x4d707070)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 291.0,
                height: 55.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                        hintText: "password".toUpperCase()
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color(0xffffffff),
                  border: Border.all(width: 1.0, color: const Color(0x4d707070)),
                ),
              ),
            ),
            Container(
              width: 291.0,
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 148.0,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    color: const Color(0xc4000000),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AccountInformation())),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 302.0,
                  height: 53.0,
                  alignment: Alignment.center,
                  child: Text(
                    'continue'.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
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
            )
          ],
        ),
      ),
    );
  }
}
