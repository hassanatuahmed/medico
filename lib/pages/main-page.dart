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
                Icons.calendar_today,
                color: Colors.grey,
            ),
            label: ('Appointment'),
            activeIcon: Icon(
                Icons.calendar_today,
                color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
             
            ),
            label: ('Health'),
            activeIcon: Icon(
              Icons.favorite,
              color: Colors.red,
              
            ),
          ),
           BottomNavigationBarItem(
            icon: Icon(
                Icons.medication_outlined,
                color: Colors.grey,
            ),
            label: ('Medication'),
            activeIcon: Icon(
                Icons.medication_outlined,
                color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.verified_user_sharp,
              color: Colors.grey,
              
            ),
            label: ('Profile'),
            activeIcon: Icon(
              Icons.verified_user_sharp,
              color: Colors.red,
              
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