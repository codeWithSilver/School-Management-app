import 'package:flutter/material.dart';
import 'package:school_management/calendar.dart';
import 'package:school_management/home.dart';

void main() {
  runApp(SchoolManagement());
}

class SchoolManagement extends StatefulWidget {
  @override
  _SchoolManagementState createState() => _SchoolManagementState();
}

class _SchoolManagementState extends State<SchoolManagement> {
  int _selectedItemIndex = 0;
  final List pages = [
    HomePage(),
    null,
    null,
    CalendarPage(),
    null,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Color(0xFFF0F0F0),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.blueGrey[600]),
          currentIndex: _selectedItemIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedItemIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.insert_chart),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.done),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.calendar_today),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.chat_bubble),
            ),
          ],
        ),
        body: pages[_selectedItemIndex]
      ),
    );
  }
}
