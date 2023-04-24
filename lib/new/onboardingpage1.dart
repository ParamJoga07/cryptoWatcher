import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text(
                  'The Future of Real Estate',
                  style: GoogleFonts.balooBhaijaan2(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  textAlign: TextAlign.center,
                ),
              ),
              const Image(
                  image: AssetImage(
                      'lib/assets/—Pngtree—different styles residential houses vector_7427471 (1).png'))
            ],
          )
        ],
      )),
    );
  }
}
