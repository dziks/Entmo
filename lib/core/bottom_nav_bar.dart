import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
import 'package:entmo/features/Entertainment/Presentation/Pages/entertainment_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(BottomNavBar());

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //variable to select the first screen
  int _selectedIndex = 0;
  //list of screens to display
  final _widgetOptions = [
    EntertainmentListView(),
    EntertainmentListView(),
    EntertainmentListView(),
    EntertainmentListView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (new Column(
        children: <Widget>[
          Expanded(child: _widgetOptions.elementAt(_selectedIndex)),
        ],
      )),
      
      //package to display the bottom navigation bar
      bottomNavigationBar: BubbledNavigationBar(
        backgroundColor: Colors.white30,
        defaultBubbleColor: Colors.blue,
        onTap: (index) {
          // handle tap
        },
        items: <BubbledNavigationBarItem>[
          //Navigation Bar Items
          BubbledNavigationBarItem(
            icon: Icon(Icons.home, size: 30, color: Colors.red),
            activeIcon: Icon(Icons.home, size: 30, color: Colors.white),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          BubbledNavigationBarItem(
            icon: Icon(Icons.movie_creation, size: 30, color: Colors.purple),
            activeIcon:
                Icon(Icons.movie_creation, size: 30, color: Colors.white),
            title: Text(
              'Movies',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          BubbledNavigationBarItem(
            icon: Icon(Icons.blur_circular, size: 30, color: Colors.teal),
            activeIcon:
                Icon(Icons.blur_circular, size: 30, color: Colors.white),
            title: Text(
              'Shows',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          BubbledNavigationBarItem(
            icon: Icon(Icons.settings, size: 30, color: Colors.cyan),
            activeIcon: Icon(Icons.settings, size: 30, color: Colors.white),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
