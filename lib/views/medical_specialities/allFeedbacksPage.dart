import 'package:flutter/material.dart';
class AllFeedbacksPage extends StatefulWidget {
  @override
  _AllFeedbacksPageState createState() => _AllFeedbacksPageState();
}

class _AllFeedbacksPageState extends State<AllFeedbacksPage> {
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
              height: 110.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("All Feedback", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
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

            Container(
              margin: EdgeInsets.only(top: 120),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: feedback,
                ),
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
          ],
        ),
      ),
    );
  }

  Widget feedback(BuildContext context, int index){
    return Padding(
      padding: EdgeInsets.only(bottom: 10, left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile3.png"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(thickness: 0.5, color: Colors.grey,),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Very good - courteous and efficient staff", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Text("Jitu Rout - 2 years ago", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}