import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwipeToDeleteArchive extends StatefulWidget {
  const SwipeToDeleteArchive({Key? key}) : super(key: key);

  @override
  _SwipeToDeleteArchiveState createState() => _SwipeToDeleteArchiveState();
}

class _SwipeToDeleteArchiveState extends State<SwipeToDeleteArchive> {
  List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 23, 2, 44),
        title: Text(
          "Swipe slider",
          style: GoogleFonts.balooBhai2(
              fontSize: 15,
              fontWeight: FontWeight.w900,
              color: const Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 17, 3, 47),
            Color.fromARGB(255, 67, 20, 115),
          ],
        )),
        child: SafeArea(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  elevation: 9,
                  child: Dismissible(
                    key: Key(item),
                    direction: DismissDirection.horizontal,
                    onDismissed: (direction) {
                      setState(() {
                        items.removeAt(index);
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            backgroundColor:
                                const Color.fromARGB(255, 23, 2, 44),
                            content: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "$item dismissed",
                                style: GoogleFonts.balooBhai2(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255)),
                              ),
                            )),
                      );
                    },
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                    secondaryBackground: Container(
                      color: Colors.green,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Icon(Icons.archive, color: Colors.white),
                    ),
                    child: ListTile(
                        title: Text(
                      item,
                      style: GoogleFonts.balooBhai2(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
