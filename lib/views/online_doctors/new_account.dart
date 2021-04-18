import 'package:doctorgo_doctor/views/payment_method.dart';
import 'package:flutter/material.dart';
class NewAccount extends StatefulWidget {
  @override
  _NewAccountState createState() => _NewAccountState();
}
enum SingingCharacter { male, female }
class _NewAccountState extends State<NewAccount> {
  SingingCharacter _character = SingingCharacter.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150.0,
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
                child: Icon(Icons.arrow_back, color: Colors.white,),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 42),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Book test & packages online...", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold), ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 85),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.all(12),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                height: 80, 
                                width: 80,
                                margin: EdgeInsets.only(left: 30, right: 20),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/doctor_profile.png"),
                                ),
                              ),
                              Text("Apollo Munich", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, ),)
                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Name",
                                contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide( width: 1, color: Color(0xFF868E9C), style: BorderStyle.solid),
                                ),
                              ),
                              validator: (value) =>
                                  value.isEmpty ? 'Password can\'t be empty' : null,
                              // onSaved: (value) => _password = value.trim(),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 15, bottom :15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "E-mail",
                                contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide( width: 1, color: Color(0xFF868E9C), style: BorderStyle.solid),
                                ),
                              ),
                              validator: (value) =>
                                  value.isEmpty ? 'Password can\'t be empty' : null,
                              // onSaved: (value) => _password = value.trim(),
                            ),
                          ),

                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Number",
                              contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide( width: 1, color: Color(0xFF868E9C), style: BorderStyle.solid),
                              ),
                            ),
                            validator: (value) =>
                                value.isEmpty ? 'Password can\'t be empty' : null,
                            // onSaved: (value) => _password = value.trim(),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text("Choose Gender", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),

                          Row(
                            children: <Widget>[
                              Text("Male"),
                              Radio(
                                value: SingingCharacter.male,
                                groupValue: _character,
                                onChanged: (SingingCharacter value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                              Text("Female"),
                              Radio(
                                  value: SingingCharacter.female,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter value) {
                                    setState(() {
                                      _character = value;
                                    });
                                  },
                                ),
                            ],
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 20, bottom: 15, left: 10, right: 10),
                            height: 45,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Color.fromRGBO(61, 140, 255, 1), ),
                              borderRadius: BorderRadius.circular(25)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("1 Test Added", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 12),),
                                      Text("\$300", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(builder: (_) => PaymentMethod()),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width*2/5,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text("Continue", style: TextStyle(color: Colors.white),),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(61, 140, 255, 1),
                                      borderRadius: BorderRadius.circular(25)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}