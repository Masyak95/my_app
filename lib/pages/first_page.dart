import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/profile_page.dart';
import 'package:my_app/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigatesBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [HomePage(), ProfilePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first page"),
        backgroundColor: Colors.lightBlue,
      ),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        backgroundColor: Colors.lightBlue[200],
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 48,
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/homepage");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTINGS"),
              onTap: () {
                Navigator.pushNamed(context, "/settingspage");
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _navigatesBottomBar,
              items:  const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: "Home"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "Settings"
                ),
      ]),
    );
  }
}
