import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ha_resume_messenger/views/CallsView.dart';
import 'package:ha_resume_messenger/views/ChatView.dart';
import 'package:ha_resume_messenger/views/ProfileView.dart';

class HomePage extends StatefulWidget
{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{

  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    ChatView(),
    CallsView(),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFF303030),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Messenger",
                style: GoogleFonts.nunitoSans(
                  fontSize: 25,
                  letterSpacing: 1,
                  color: Colors.white
                ),
              ),
            ),
            _pages.elementAt(_selectedIndex),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF303030),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Color(0xFFBB86FC),
        unselectedItemColor: Color(0xFFFFFFFF),
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 25),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
