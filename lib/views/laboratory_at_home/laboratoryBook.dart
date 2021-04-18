import 'package:doctorgo_doctor/views/laboratory_at_home/selected_packages.dart';
import 'package:flutter/material.dart';

class LaboratoryBook extends StatefulWidget {
  @override
  _LaboratoryBookState createState() => _LaboratoryBookState();
}

class _LaboratoryBookState extends State<LaboratoryBook> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
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
                  SizedBox(
                    height: 40,
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10,),
                        child: Text("Top specialities")
                      ),
                    ],
                  ),

                  Expanded(
                    child: Card(
                      margin: EdgeInsets.only(top: 10),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                        )
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: ListView.builder(
                                itemCount: 10,
                                itemBuilder: speciality,
                              ),
                            ),
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
                                  padding: EdgeInsets.only(left: 50),
                                  child: Text("\$300"),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (_) => SelectedPackages()),
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width/2,
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
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 85),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText: "Search...",
                        contentPadding: EdgeInsets.all(0),
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
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

  Widget speciality(BuildContext context, int index){
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("T3-T4-TSH", style: TextStyle(fontWeight: FontWeight.w500),),
              SizedBox(height: 5),
              Text("\$20", style: TextStyle(color: Colors.grey, fontSize: 12),),
            ],
          ),

          Icon(Icons.add_circle_outline, color: Colors.blue,)
        ],
      ),
    );
  }
}