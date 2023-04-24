import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwipingListViewer extends StatefulWidget {
  const SwipingListViewer({Key? key}) : super(key: key);

  @override
  _SwipingListViewerState createState() => _SwipingListViewerState();
}

class _SwipingListViewerState extends State<SwipingListViewer> {
  List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 136, 80, 199),
          Color.fromARGB(255, 199, 169, 234),
          Color.fromARGB(255, 251, 240, 240),
          Color.fromARGB(255, 255, 255, 255),
        ],
      )),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              elevation: 30,
              child: Dismissible(
                key: Key(item),
                direction: DismissDirection.horizontal,
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        backgroundColor: Colors.transparent,
                        content: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "$item dismissed",
                            style: GoogleFonts.balooBhai2(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                        )),
                  );
                },
                background: Container(
                  color: const Color.fromARGB(255, 177, 54, 244),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Icon(Icons.delete, color: Colors.black),
                ),
                secondaryBackground: Container(
                  color: const Color.fromARGB(255, 175, 76, 162),
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Icon(Icons.archive,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                child: Container(
                  height: 80,
                  width: 400,
                  child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 12.0, right: 50),
                        child: const SizedBox(
                          height: 60,
                          width: 60,
                          child: Image(
                              image: AssetImage(
                                  'lib/assets/Cryptocurrency_Bitcoin_logo_and_flat_vector_icon_illustration-removebg-preview.png')),
                        ),
                      ),
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
    );
  }
}
