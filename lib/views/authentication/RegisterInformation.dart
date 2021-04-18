import 'package:doctorgo_doctor/views/authentication/EmailCodePage.dart';
import 'package:flutter/material.dart';

class RegisterInformation extends StatefulWidget {
  @override
  _RegisterInformationState createState() => _RegisterInformationState();
}


class _RegisterInformationState extends State<RegisterInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Account\nInformation',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                        height: 1.24,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    GestureDetector(
                      onTap:(){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close, color: Colors.grey,)
                    )
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Name',
                    style: TextStyle(
                      fontFamily: 'Poppins',
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
                            child: Image.asset("assets/icon/user.png")
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        )
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29.0),
                      color: Color(0xd1e3eaf5),
                      border:
                          Border.all(width: 5.0, color: const Color(0x0c707070)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Last name',
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
                            child: Image.asset("assets/icon/user.png")
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
                      color: const Color(0xd1e3eaf5),
                      border:
                          Border.all(width: 5.0, color: const Color(0x0c707070)),
                    ),
                  ),
                ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: InkWell(
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> EmailCodePage())),
                  child: Container(
                    width: 288.0,
                    height: 52.0,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset("assets/icon/check1.png", color: Colors.transparent, width: 20),
                        Text(
                          'Next'.toUpperCase(),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Image.asset("assets/icon/check1.png", width: 20),
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
            )


              ],
            ),
          ),
        ));
  }
}
