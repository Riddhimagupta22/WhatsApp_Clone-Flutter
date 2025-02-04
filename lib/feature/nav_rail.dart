import 'package:app_clone/Main Screen/calls.dart';
import 'package:app_clone/Main%20Screen/Chat%20Page/chats.dart';
import 'package:app_clone/Main Screen/communties.dart';
import 'package:app_clone/Main Screen/updates.dart';
import 'package:flutter/material.dart';

double bigScreenWidth = 640.0;

class Navigationrail extends StatefulWidget {
  const Navigationrail();
  @override
  _NavigationrailState createState() => _NavigationrailState();
}

class _NavigationrailState extends State<Navigationrail> {
  final PageController _pageViewController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    if (screenWidth > bigScreenWidth) {
      return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              labelType: NavigationRailLabelType.all,
              selectedLabelTextStyle: TextStyle(color: Colors.green),
              unselectedLabelTextStyle: TextStyle(color: Colors.white),
              unselectedIconTheme: IconThemeData(color: Colors.white, size: 25),
              selectedIconTheme: IconThemeData(color: Colors.green, size: 30),
              backgroundColor: Color(0xff0a131a),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.chat),
                  label: Text('Chats'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.update),
                  label: Text('Updates'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.people_outline),
                  label: Text('Communities'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.call_outlined),
                  label: Text('Calls'),
                ),
              ],
              selectedIndex: _selectedIndex,
              onDestinationSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
                _pageViewController.jumpToPage(index);
              },
            ),
            Expanded(
              child: PageView(
                controller: _pageViewController,
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                children: [
                  HomePage(),
                  Updatepage(),
                  Communities(),
                  Calls(),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        body: PageView(
          controller: _pageViewController,
          onPageChanged: (index) {
            setState(() {
              var i = _selectedIndex = index;
            });
          },
          children: [
            HomePage(),
            const Updatepage(),
            const Communities(),
            Calls(),
          ],
        ),
        bottomNavigationBar: Container(
          height: screenHeight * .09,
          decoration: BoxDecoration(
              border:
                  Border(top: BorderSide(color: Colors.white24, width: 0.8))),
          child: BottomNavigationBar(
            iconSize: 24,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.white60,
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
              _pageViewController.jumpToPage(index);
            },
            backgroundColor: Color.fromARGB(255,11,17,21),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                backgroundColor: Color.fromARGB(255,11,17,21),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.update),
                label: 'Updates',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people_outline),
                label: 'Communities',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call_outlined),
                label: 'Calls',
              ),
            ],
          ),
        ),
      );
    }
  }
}
