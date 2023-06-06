import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:circles_background/circles_background.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

void main() {
  runApp(const CryptoPage());
}

class CryptoPage extends StatelessWidget {
  const CryptoPage({Key? key}) : super(key: key);

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
          child: const BackgroundDesign()),
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

class BackgroundDesign extends StatelessWidget {
  const BackgroundDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          RowSuper(
              innerDistance: -580,
              outerDistance: -10,
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: Transform.rotate(
                    angle: 0.3,
                    child: CupertinoCard(
                      splashColor: const Color.fromARGB(255, 119, 40, 237),
                      decoration: const BoxDecoration(
                        // Box decoration takes a gradient
                        gradient: LinearGradient(
                          // Where the linear gradient begins and ends
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          // Add one stop for each color. Stops should increase from 0 to 1
                          stops: [0.0, 0.2, 0.8, 1.0],
                          colors: [
                            Color.fromARGB(255, 0, 220, 232),
                            Color.fromARGB(255, 37, 178, 234),
                            Color.fromARGB(255, 33, 206, 245),
                            Color.fromARGB(255, 47, 40, 240),
                          ],
                        ),
                      ),
                      elevation: 60.0,
                      margin: const EdgeInsets.all(1.0),
                      padding: const EdgeInsets.all(0.0),
                      radius: const BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                      ),
                      onPressed: () {
                        print("Clicked");
                      },
                      child: Container(
                        constraints: const BoxConstraints.expand(
                          height: 200.0,
                        ),
                        child: RowSuper(
                          innerDistance: -25,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                    height: 75,
                                    width: 75,
                                    child: Image(
                                        image: AssetImage(
                                            'lib/assets/Logo_Concept-removebg-preview.png'))),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 40),
                                  child: Text(
                                    '5763 7365 3737 3637\nPARAM JOGA ',
                                    style: GoogleFonts.balooBhai2(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900,
                                        color: const Color.fromARGB(
                                            255, 255, 249, 249)),
                                    textAlign: TextAlign.left,
                                  ),
                                )
                              ],
                            ),
                            const Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: SizedBox(
                                    // alignment: Alignment.centerRight,
                                    height: 200,
                                    width: 200,
                                    child: Image(
                                        image: AssetImage(
                                            '/Users/apple/Documents/GitHub/crypto-wallet/cryptowatcher/lib/assets/geosyrup-post5-removebg-preview.png')),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: -0.3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: CupertinoCard(
                      splashColor: const Color.fromARGB(255, 119, 40, 237),
                      decoration: const BoxDecoration(
                        // Box decoration takes a gradient
                        gradient: LinearGradient(
                          // Where the linear gradient begins and ends
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          // Add one stop for each color. Stops should increase from 0 to 1
                          stops: [0.0, 0.2, 0.8, 1.0],
                          colors: [
                            Color.fromARGB(255, 44, 250, 106),
                            Color.fromARGB(255, 119, 234, 37),
                            Color.fromARGB(255, 245, 245, 33),
                            Color.fromARGB(255, 240, 230, 40),
                          ],
                        ),
                      ),
                      elevation: 60.0,
                      margin: const EdgeInsets.all(1.0),
                      padding: const EdgeInsets.all(0.0),
                      radius: const BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                      ),
                      onPressed: () {
                        print("Clicked");
                      },
                      child: Container(
                        constraints: const BoxConstraints.expand(
                          height: 200.0,
                        ),
                        child: RowSuper(
                          innerDistance: -25,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                    height: 75,
                                    width: 75,
                                    child: Image(
                                        image: AssetImage(
                                            'lib/assets/Logo_Concept-removebg-preview.png'))),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 40),
                                  child: Text(
                                    '5763 7365 3737 3637\nPARAM JOGA ',
                                    style: GoogleFonts.balooBhai2(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0)),
                                    textAlign: TextAlign.left,
                                  ),
                                )
                              ],
                            ),
                            const Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: SizedBox(
                                    // alignment: Alignment.centerRight,
                                    height: 200,
                                    width: 200,
                                    child: Image(
                                        image: AssetImage(
                                            '/Users/apple/Documents/GitHub/crypto-wallet/cryptowatcher/lib/assets/geosyrup-post4-removebg-preview.png')),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
          Padding(
            padding: const EdgeInsets.only(top: 250.0, left: 50),
            child: Align(
              alignment: Alignment.topLeft,
              child: ColumnSuper(
                innerDistance: -40,
                children: [
                  Text(
                    'Buy',
                    style: GoogleFonts.balooBhaijaan2(
                        fontSize: 60,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Sell',
                    style: GoogleFonts.balooBhaijaan2(
                        fontSize: 60,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Swap',
                    style: GoogleFonts.balooBhaijaan2(
                        fontSize: 60,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500.0, right: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: ColumnSuper(
                innerDistance: -30,
                children: [
                  Text(
                    'Discover',
                    style: GoogleFonts.balooBhaijaan2(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Collect',
                    style: GoogleFonts.balooBhaijaan2(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '& Sell',
                    style: GoogleFonts.balooBhaijaan2(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: ColumnSuper(
                innerDistance: -30,
                children: [
                  Icon(
                    Icons.line_axis_rounded,
                    size: 830,
                    color: Colors.black.withOpacity(0.2),
                  )
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 530.0, right: 5),
          //   child: Align(
          //     alignment: Alignment.topLeft,
          //     child: ColumnSuper(
          //       innerDistance: -30,
          //       children: [
          //         Icon(
          //           Icons.line,
          //           size: 230,
          //           color: Colors.black.withOpacity(0.4),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NeumorphicButton(
              onTap: () {},
              borderRadius: 20,
              bottomRightShadowBlurRadius: 15,
              bottomRightShadowSpreadRadius: 1,
              borderWidth: 0,
              backgroundColor: const Color.fromARGB(255, 225, 224, 224),
              topLeftShadowBlurRadius: 15,
              topLeftShadowSpreadRadius: 1,
              topLeftShadowColor: const Color.fromARGB(255, 246, 242, 242),
              bottomRightShadowColor: const Color.fromARGB(255, 142, 141, 141),
              height: size.width * 0.15,
              width: size.width * 0.15,
              bottomRightOffset: const Offset(4, 4),
              topLeftOffset: const Offset(-4, -4),
              child: const Center(
                  child: Icon(
                Icons.category_outlined,
                size: 35,
                weight: 500,
              )),
            ),
          )
        ],
      ),
    ));
  }
}
