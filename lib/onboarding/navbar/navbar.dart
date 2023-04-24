import 'package:cryptowatcher/onboarding/navbar/home.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:icons_plus/icons_plus.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() => runApp(MaterialApp(
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!);
    },
    home: Example()));

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w800);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.transparent,
          Colors.transparent,
        ],
      )),
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: ClipPath(
          clipper: OvalTopBorderClipper(),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Color.fromARGB(255, 58, 2, 88).withOpacity(0.2),
                )
              ],
            ),
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: GNav(
                    rippleColor: Color.fromARGB(255, 228, 227, 227),
                    hoverColor: const Color.fromARGB(255, 113, 30, 155),
                    gap: 8,
                    activeColor: Colors.white,
                    iconSize: 24,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    duration: const Duration(milliseconds: 400),
                    color: const Color.fromARGB(255, 89, 1, 161),
                    tabs: const [
                      GButton(
                        icon: FontAwesome.house_chimney,
                        text: 'Home',
                        backgroundGradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 129, 33, 255),
                            Color.fromARGB(255, 171, 26, 255),
                            Color.fromARGB(255, 211, 35, 250),
                          ],
                        ),
                      ),
                      GButton(
                        icon: FontAwesome.chart_area,
                        text: 'Likes',
                        backgroundGradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 129, 33, 255),
                            Color.fromARGB(255, 171, 26, 255),
                            Color.fromARGB(255, 211, 35, 250),
                          ],
                        ),
                      ),
                      GButton(
                        icon: FontAwesome.magnifying_glass_chart,
                        backgroundGradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 129, 33, 255),
                            Color.fromARGB(255, 171, 26, 255),
                            Color.fromARGB(255, 211, 35, 250),
                          ],
                        ),
                        text: 'Search',
                      ),
                      GButton(
                        icon: FontAwesome.user_secret,
                        text: 'Profile',
                        backgroundGradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 129, 33, 255),
                            Color.fromARGB(255, 171, 26, 255),
                            Color.fromARGB(255, 211, 35, 250),
                          ],
                        ),
                      ),
                    ],
                    selectedIndex: _selectedIndex,
                    onTabChange: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
