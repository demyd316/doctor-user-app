import 'package:doctorgo_doctor/views/payment_method.dart';
import 'package:flutter/material.dart';
class LaboratoryMyChild extends StatefulWidget {
  @override
  _LaboratoryMyChildState createState() => _LaboratoryMyChildState();
}
enum SingingCharacter { male, female }
class _LaboratoryMyChildState extends State<LaboratoryMyChild> {
  SingingCharacter _character = SingingCharacter.male;
  bool textVisible = false;
  bool checkBoxValue = false;
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
                                  backgroundImage: AssetImage("assets/images/therapist_img3.png"),
                                ),
                              ),
                              Text("Bio Pharma Laboratory", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, ),)
                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "First Name",
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
                                hintText: "Last Name",
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
                            padding: EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Date of birth",
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
                            decoration: InputDecoration(
                              hintText: "ID Number",
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
                              Radio(
                                value: SingingCharacter.male,
                                groupValue: _character,
                                onChanged: (SingingCharacter value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                              Text("Male", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromRGBO(61, 140, 255, 1),),),
                              Radio(
                                value: SingingCharacter.female,
                                groupValue: _character,
                                onChanged: (SingingCharacter value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                              Text("Female", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color.fromRGBO(61, 140, 255, 1),),),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    textVisible = !textVisible;
                                  });
                                },
                                child: Container(
                                  height: 22,
                                  width: 22,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text("?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), textAlign: TextAlign.center,),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 2.5, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Visibility(
                            visible: textVisible,
                            child: Text(
                              "DoctorGo accepts all gender identities. However, in order to use your insurance coverage or for your doctor to prescribe medication, you must specify your child's gender as male or femal",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Checkbox(
                                onChanged: (value){
                                  setState(() {
                                    checkBoxValue = value;
                                  });
                                },
                                value: checkBoxValue,
                              ),
                              Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 12),
                                                                      child: Text(
                                    "By continuing, I agree that I am legally authorized to perform medical laboratory sampling",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                ),
                                  ),
                              )
                            ],
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
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