import 'package:cryptowatcher/calender/lib/main.dart';
import 'package:cryptowatcher/onboarding/design.dart';
import 'package:cryptowatcher/onboarding/landingpage2.dart';
import 'package:cryptowatcher/onboarding/navbar/navbar.dart';
import 'package:cryptowatcher/onboarding/page1.dart';
import 'package:cryptowatcher/onboarding/page2.dart';
import 'package:cryptowatcher/onboarding/page4.dart';

import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  _OnboardingScreen1State createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  final List<Widget> _pages = [
    const CryptoPage(),
    CalenderPage(),

    // CalenderEvents(),
    const Page1(),
    const Page2(),
    DayAndNightSwitch(),

    // const SwipeToDeleteArchive(),
    const Page4(),
    Example(),
  ];
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          PageView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
            onPageChanged: (int index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
          ),
          Positioned(
            left: 20.0,
            bottom: 20.0,
            child: Row(
              children: _buildDots(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: _currentPageIndex == index ? 18.0 : 10.0,
      height: _currentPageIndex == index ? 18.0 : 10.0,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPageIndex == index ? Colors.blueGrey : Colors.grey,
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];
    for (int i = 0; i < _pages.length; i++) {
      dots.add(_buildDot(i));
    }
    return dots;
  }
}
