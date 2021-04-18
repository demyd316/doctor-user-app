import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(227, 234, 245, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[

            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 30,  right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.keyboard_arrow_left)
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/images/user.jpg"),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Icon(Icons.fiber_manual_record, color: Color(0xff07b112), size: 20)
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text("Alexander", style: TextStyle(fontSize: 18, color: Colors.grey),)
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Image.asset("assets/images/call_blue.png", width: 40,)
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 15, right: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text("Hi, I'm here", style: TextStyle(color: Colors.white),),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-1.6, 2.17),
                                      end: Alignment(0.53, -1.52),
                                      colors: [
                                        const Color(0xff2d79e6),
                                        const Color(0xff093d87)
                                      ],
                                      stops: [0.0, 1.0],
                                    ),
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                ),
                              ],
                            ),
                            Text("5 min ago", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text("Hi, I'm here", style: TextStyle(color: Colors.black),),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                ),
                              ],
                            ),
                            Text("5 min ago", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  
                                  padding: EdgeInsets.all(10),
                                  child: Text("I want to work for you.", style: TextStyle(color: Colors.white),),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(-1.6, 2.17),
                                      end: Alignment(0.53, -1.52),
                                      colors: [
                                        const Color(0xff2d79e6),
                                        const Color(0xff093d87)
                                      ],
                                      stops: [0.0, 1.0],
                                    ),
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                ),
                              ],
                            ),
                            Text("5 min ago", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width*0.65,
                                  padding: EdgeInsets.all(10),
                                  child: Text("Lorem ipsum dolor sit amet, consecteur adipiscing elit. Aliquam vierra tempus sagittis. Vestibulum ante ip", style: TextStyle(color: Colors.black),),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                ),
                              ],
                            ),
                            Text("2 min ago", style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text("Ok, i got it.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                      decoration: BoxDecoration(
                        color: Color(0xff3d8cff),
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),

                    Container(
                      height: 40,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text("No problems.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                      decoration: BoxDecoration(
                        color: Color(0xff3d8cff),
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),

                    Container(
                      height: 40,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text("Thanks.", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                      decoration: BoxDecoration(
                        color: Color(0xff3d8cff),
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff4f6f8),
              child: Center(
                child: Card(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.85,
                    padding: EdgeInsets.only(left: 20, right: 5),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              suffixIcon: Icon(Icons.send, color: Colors.grey,),
                              hintText: "Type a message",
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500)
                            ),
                          ),
                        ),
                        Card(
                          child: Container(
                            height: 30,
                            width: 30,
                            child: Icon(Icons.add, color: Color(0xff4a00e0),),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  } 
}