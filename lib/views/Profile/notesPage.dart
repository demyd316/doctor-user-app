import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 145, left: 8, right: 8),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 8, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Jadwal main PS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                                  Text("Senin...", style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold, ),),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text("10 Mei 2019", style: TextStyle(fontSize: 12, color: Colors.grey),)
                                  )
                                ],
                              ),
                            ),

                            Column(
                              children: <Widget>[
                                Icon(Icons.favorite_border, color: Colors.grey,),
                                Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Icon(Icons.edit, color: Colors.grey,)
                                ),
                                Icon(Icons.delete, color: Colors.grey,),
                              ],
                            ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),

                    Card(
                      elevation: 3,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 8, bottom: 15),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Tugas Sekolah SD Purwoyoso", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, ),),
                                  Text("Senin...", style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold, ),),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text("10 Mei 2019", style: TextStyle(fontSize: 12, color: Colors.grey),)
                                  )
                                ],
                              ),
                            ),

                            Column(
                              children: <Widget>[
                                Icon(Icons.favorite_border, color: Colors.grey,),
                                Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Icon(Icons.edit, color: Colors.grey,)
                                ),
                                Icon(Icons.delete, color: Colors.grey,),
                              ],
                            ),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 110.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.dehaze, color: Colors.white,),
                  Text("NOTES", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                  Icon(Icons.widgets, color: Colors.white,),
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
                    Color(0xff2d79e6), 
                    Color(0xff093d87)
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 85),
                  elevation: 3,
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
                        hintText: "Search",
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
          ],
        ),
      ),
      floatingActionButton: Image.asset("assets/icon/add2.png", width: 46)
    );
  }
}