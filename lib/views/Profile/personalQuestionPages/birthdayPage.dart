import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class BirthdayPage extends StatefulWidget {
  @override
  _BirthdayPageState createState() => _BirthdayPageState();
}

class _BirthdayPageState extends State<BirthdayPage> {
  DateTime dateTime;
  TextEditingController birthdayController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('When is your birthday?', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
            TextFormField(
              controller: birthdayController,
              onTap: (){
                FocusScope.of(context).requestFocus(FocusNode());
                DatePicker.showDatePicker(
                  context,
                  showTitleActions: true,
                  minTime: DateTime(1900, 1, 1, 20, 50),
                  maxTime: DateTime.now(), 
                  onChanged: (date) {

                  },
                  onConfirm: (date) {
                  setState(() {
                    dateTime = date;
                    birthdayController.text =  DateFormat('yyyy-MM-dd').format(date);
                  });
                });
              },
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.cancel, color: Color(0xff959ac9),),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff2d79e6),
            Color(0xff053476)
          ],
          stops: [0.0, 1.0],
        ),
      ),
    ); 
  }
}