import 'package:cryptowatcher/onboarding/navbar/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool _isPinned = false;

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
            Color.fromARGB(255, 63, 17, 110),
          ],
        )),
        child: SafeArea(
            child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Text(
                    'Welcome!!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.balooBhai2(
                        fontSize: 33,
                        fontWeight: FontWeight.w900,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(110)),
                    child: GestureDetector(
                      onPanDown: (details) {
                        setState(() {
                          _isPinned = true;
                        });
                      },
                      onPanCancel: () {
                        setState(() {
                          _isPinned = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        width: _isPinned
                            ? MediaQuery.of(context).size.width * 1.3
                            : 130,
                        height: _isPinned
                            ? MediaQuery.of(context).size.height * 0.22
                            : 130,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular((100)),
                          child: const Image(
                            image: AssetImage(
                                '/Users/apple/Documents/GitHub/crypto-wallet/cryptowatcher/lib/assets/crypto watcher-4.gif'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10),
                  child: Text(
                    'Track your holdings over time \n and gain an edge over your competitors with configurable visualisations and watchlists, and streamlined multi-exchange trading all in one place.',
                    style: GoogleFonts.balooBhaijaan2(
                        fontSize: 13,
                        fontWeight: FontWeight.w900,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: SizedBox(
                    height: 350,
                    width: 450,
                    child: Image(image: AssetImage('lib/assets/graph.gif')),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    child: const Icon(
                      Icons.navigate_next_rounded,
                      size: 20,
                    ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
