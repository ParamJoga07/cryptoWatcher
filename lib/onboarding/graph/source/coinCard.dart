import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoinCard extends StatelessWidget {
  CoinCard({
    super.key,
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.change,
    required this.changePercentage,
  });

  String name;
  String symbol;
  String imageUrl;
  double price;
  double change;
  double changePercentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.transparent,
              offset: Offset(1, 1),
              blurRadius: 1,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-1, -1),
              blurRadius: 1,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 70, 68, 68),
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                height: 50,
                width: 50,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.network(imageUrl),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        name,
                        style: GoogleFonts.balooBhaijaan2(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      symbol,
                      style: GoogleFonts.balooBhaijaan2(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: const Color.fromARGB(255, 82, 81, 81)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price.toDouble().toString(),
                    style: GoogleFonts.balooBhaijaan2(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    change.toDouble() < 0
                        ? change.toDouble().toString()
                        : '+${change.toDouble()}',
                    style: GoogleFonts.balooBhaijaan2(
                      color: change.toDouble() < 0 ? Colors.red : Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    changePercentage.toDouble() < 0
                        ? '${changePercentage.toDouble()}%'
                        : '+${changePercentage.toDouble()}%',
                    style: GoogleFonts.balooBhaijaan2(
                      color: changePercentage.toDouble() < 0
                          ? Colors.red
                          : Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
