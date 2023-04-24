import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 17, 3, 47),
            Color.fromARGB(255, 69, 19, 119),
          ],
        )),
        child: SafeArea(
            child: Stack(
          fit: StackFit.expand,
          children: [
            ColumnSuper(
              innerDistance: -5.0,
              children: [
                Container(
                  height: 250,
                  width: 230,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 8.0,
                      ),
                      left: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 18.0,
                      ),
                      right: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 18.0,
                      ),
                    ),
                  ),
                  child: const Image(
                      image: AssetImage(
                          'lib/assets/Samsung_Lovers-removebg-preview.png')),
                ),
                SizedBox(
                  height: 170,
                  width: 250,
                  child: Card(
                    elevation: 50,
                    color: const Color.fromARGB(0, 0, 0, 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, left: 10, right: 10),
                          child: Text(
                            'Whenever the price of cryptocurrency is rallying, people start spending a lot more. \n                               — Erik Voorhees',
                            style: GoogleFonts.acme(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
