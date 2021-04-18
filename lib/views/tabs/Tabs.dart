
import 'package:doctorgo_doctor/views/my_schedules_screen.dart';
import 'package:doctorgo_doctor/views/tabs/favoritePage.dart';
import 'package:doctorgo_doctor/views/tabs/home.dart';
import 'package:doctorgo_doctor/views/tabs/profilePage.dart';
import 'package:doctorgo_doctor/views/tabs/walletPage.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget{
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  int _currentTabIndex = 0;

  List<Widget> _tabs = [
    HomePage(),
    FavoritePage(),
    MySchedulesScreen(),
    WalletPage(),
    ProfilePage()
  ];

  _changeTab(int val){
    print(val);
    setState(() {
      _currentTabIndex = val+1;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentTabIndex],
      floatingActionButton: GestureDetector(
        onTap: (){
          _changeTab(-1);
        },
        child: _currentTabIndex == 0 ? Image.asset("assets/icon/add2.png", width: 46) : Image.asset("assets/icon/add1.png", width: 46)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex == 0 ? 0 : _currentTabIndex-1,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index){
          _changeTab(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/icon/heart1.png", width: 22, color: _currentTabIndex == 1 ? Color(0xff0a74ec) : Colors.grey,),
            title:Container()
          ),
          BottomNavigationBarItem(

            icon: Image.asset("assets/icon/calendar1.png", width: 22, color: _currentTabIndex == 2 ? Color(0xff0a74ec) : Colors.grey,),
              title:Container()
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icon/wallet1.png", width: 22, color: _currentTabIndex == 3 ? Color(0xff0a74ec) : Colors.grey,),
              title:Container()
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icon/user1.png", width: 22, color: _currentTabIndex == 4 ? Color(0xff0a74ec) : Colors.grey,),
              title:Container()
          ),
        ],
      ),
    );
  }
}
