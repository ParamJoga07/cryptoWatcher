import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage1 extends StatefulWidget {
  const LandingPage1({super.key});

  @override
  State<LandingPage1> createState() => _LandingPage1State();
}

class _LandingPage1State extends State<LandingPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(237, 255, 108, 63).withOpacity(0.9),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#4',
                style: GoogleFonts.ptSerifCaption(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: const Color.fromARGB(255, 0, 0, 0)),
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Color.fromARGB(255, 0, 0, 0)),
                height: 50,
                width: 50,
                child: const Icon(
                  Icons.grid_view_rounded,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ]),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(200),
                    ),
                    color: const Color.fromARGB(237, 255, 108, 63)
                        .withOpacity(0.9),
                  ),
                  height: 400,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 88.5),
                        child: Column(
                          children: [
                            Text(
                              'MARS',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ptSerifCaption(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                            ),
                            Text(
                              'The Red Planet',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.balooBhai2(
                                  fontSize: 33,
                                  fontWeight: FontWeight.w900,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                            ),
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(200)),
                              child: Container(
                                child: const Image(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        'lib/assets/red-planet-mars-isolated-white-background_338491-7351-removebg-preview.png')),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),

              // Container(color: Colors.black, height: 339)
            ],
          )
        ],
      )),
    );
  }
}
