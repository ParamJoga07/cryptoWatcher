// import 'package:cryptowatcher/onboarding/page3.dart';
import 'package:cryptowatcher/onboarding/page4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(64, 67, 156, 1),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('data'),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: const Image(
                        image: AssetImage('lib/assets/ezgif-2-c64d41e503.gif')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Text(
                    'Better user Understandability through \n 3-dimenisonal graphs, and can forecast predictions through them.',
                    style: GoogleFonts.balooBhaijaan2(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 400,
                  width: 400,
                  child: Image(image: AssetImage('lib/assets/PIECHART.gif')),
                ),
                ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide.none,
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                image: const DecorationImage(
                                  image: AssetImage("lib/assets/money.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: ElevatedButton(
                                      child: const Icon(
                                        Icons.close_rounded,
                                        size: 20,
                                        weight: 800,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 110.0, vertical: 10),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 25),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Page4()));
                                        },
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              height: 20,
                                              width: 20,
                                              child: Image(
                                                  image: AssetImage(
                                                      'lib/assets/google.png')),
                                            ),
                                            Text(
                                              ' Sign with Google',
                                              style: GoogleFonts.balooBhaijaan2(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: const Color.fromARGB(
                                                      255, 0, 0, 0)),
                                            )
                                          ],
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 110.0,
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 25),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Page4()));
                                        },
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              height: 20,
                                              width: 20,
                                              child: Image(
                                                  image: AssetImage(
                                                      'lib/assets/meta.png')),
                                            ),
                                            Text(
                                              ' Sign with Meta',
                                              style: GoogleFonts.balooBhaijaan2(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: const Color.fromARGB(
                                                      255, 6, 6, 6)),
                                            )
                                          ],
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 110.0, vertical: 10),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 25),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Page4()));
                                        },
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              height: 20,
                                              width: 20,
                                              child: Image(
                                                  image: AssetImage(
                                                      'lib/assets/github.png')),
                                            ),
                                            Text(
                                              ' Sign with Github',
                                              style: GoogleFonts.balooBhaijaan2(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: const Color.fromARGB(
                                                      255, 6, 6, 6)),
                                            )
                                          ],
                                        )),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.balooBhaijaan2(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      textAlign: TextAlign.center,
                    )),
              ],
            )
          ],
        )),
      ),
    );
  }
}
