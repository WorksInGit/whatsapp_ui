import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_ui/calls.dart';
import 'package:whatsapp_ui/community.dart';
import 'package:whatsapp_ui/home_page.dart';
import 'package:whatsapp_ui/updates.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> _pages = <Widget> [
    HomePage(),
    Updates(),
    Community(),
    Calls()
  ];
  int _selectedIndex = 0;
void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
         
          label: 'Chats',
          icon: FaIcon(FontAwesomeIcons.message)),
        BottomNavigationBarItem(
          label: 'Updates',
          icon: Icon(Icons.update)),
        BottomNavigationBarItem(
          label: 'Communication',
          icon: FaIcon(FontAwesomeIcons.peopleGroup)),
        BottomNavigationBarItem(
          label: 'Calls',
          icon: FaIcon(FontAwesomeIcons.phone))
      ]),
    );
  }
}