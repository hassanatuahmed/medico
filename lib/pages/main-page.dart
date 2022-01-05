import 'package:flutter/material.dart';
import 'package:medico/pages/profile.dart';

import 'appointment-page.dart';
import 'health-page.dart';
import 'home-screen.dart';
import 'medication-page.dart';

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    AppointmentPage(),
    HealthPage(),
    MedicationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
            BottomNavigationBarItem(
            icon: Icon(
                Icons.home,
              color: Colors.grey,
            ),
            label: ('Home'),
            activeIcon: Icon(
                Icons.home,
                color: Colors.red,
            ),
          ),
           BottomNavigationBarItem(
            icon: Icon(
                Icons.motorcycle,
                color: Colors.grey,
            ),
            label: ('Loan'),
            activeIcon: Icon(
                Icons.motorcycle,
                color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.donut_small,
              color: Colors.grey,
              size: 25,
            ),
            label: ('Banking'),
            activeIcon: Icon(
              Icons.usb,
              color: Colors.red,
              size: 30,
            ),
          ),
           BottomNavigationBarItem(
            icon: Icon(
                Icons.motorcycle,
                color: Colors.grey,
            ),
            label: ('Loan'),
            activeIcon: Icon(
                Icons.motorcycle,
                color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.donut_small,
              color: Colors.grey,
              size: 25,
            ),
            label: ('Banking'),
            activeIcon: Icon(
              Icons.usb,
              color: Colors.red,
              size: 30,
            ),
          ),
          
        ],
         onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body:  _widgetOptions.elementAt(_selectedIndex),
    );
  }

  
}