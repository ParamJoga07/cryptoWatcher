import 'package:circles_background/circles_background.dart';

import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/material.dart';

class FrontPage1 extends StatefulWidget {
  const FrontPage1({super.key});

  @override
  State<FrontPage1> createState() => _FrontPage1State();
}

class _FrontPage1State extends State<FrontPage1> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: ThreeCirclesBackgroundPage(GradientColor.blue),
      // home: const ThreeCirclesBackgroundPage(GradientColor.red),
      home: ThreeCirclesBackgroundPage(GradientColor.custom),
    );
  }
}

class ThreeCirclesBackgroundPage extends StatelessWidget {
  final GradientColor gradientColor;
  const ThreeCirclesBackgroundPage(this.gradientColor, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 252, 246),
      body: ThreeCirclesBackground(
        gradientColor: gradientColor,
        customColors: getCustomColors(),
        sizeOfScreen: MediaQuery.of(context).size,
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 200.0, horizontal: 30),
          child: SignUpCard(),
        ),
      ),
    );
  }

  List<List<Color>>? getCustomColors() {
    if (gradientColor == GradientColor.custom) {
      return [
        [Colors.pink[700]!, Colors.pink[900]!],
        [Colors.pink[700]!, Colors.pink[900]!],
        [Colors.pink[700]!, Colors.pink[900]!],
      ];
    }
    return null;
  }
}

class SignUpCard extends StatelessWidget {
  const SignUpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoCard(
      splashColor: const Color.fromARGB(255, 246, 30, 142),
      decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: const [0.0, 0.2, 0.9, 1.5],
          colors: [
            Colors.transparent.withOpacity(0.2),
            Colors.transparent.withOpacity(0.1),
            Colors.transparent.withOpacity(0.1),
            Colors.transparent.withOpacity(0.2),
          ],
        ),
      ),
      elevation: 80.0,
      margin: const EdgeInsets.all(1.0),
      padding: const EdgeInsets.all(0.0),
      radius: const BorderRadius.only(
        topLeft: Radius.circular(50.0),
        topRight: Radius.circular(50.0),
        bottomLeft: Radius.circular(50.0),
        bottomRight: Radius.circular(50.0),
      ),
      onPressed: () {
        // print("Clicked");
      },
      child: SizedBox(
        height: 350,
        width: 400,
        // child: FlutterLogin(
        //   onLogin: (_) => Future(() => null),
        //   onRecoverPassword: (_) => Future(() => null),
        // ),
      ),
    );
  }
}
