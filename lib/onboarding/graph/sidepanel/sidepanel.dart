import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(const SidePanel());
}

class SidePanel extends StatelessWidget {
  const SidePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liquid Shrink SideMenu',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Liquid Ui Shrink'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  toggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true, // end side menu
      background: const Color.fromARGB(255, 132, 56, 142),
      type: SideMenuType.slideNRotate,
      menu: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: buildMenu(),
      ),
      onChange: (_isOpened) {
        setState(() => isOpened = _isOpened);
      },
      child: SideMenu(
        key: _sideMenuKey,
        menu: buildMenu(),
        type: SideMenuType.slideNRotate,
        onChange: (_isOpened) {
          setState(() => isOpened = _isOpened);
        },
        child: IgnorePointer(
          ignoring: isOpened,
          child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => toggleMenu(),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => toggleMenu(true),
                  )
                ],
                title: Text(widget.title),
              ),
              body: Container(
                child: const SafeArea(
                    child: Stack(
                  children: [
                    Column(
                      children: [],
                    )
                  ],
                )),
              )),
        ),
      ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22.0,
                  child: Image(
                      image: AssetImage(
                          '/Users/apple/Documents/GitHub/crypto-wallet/cryptowatcher/lib/assets/geosyrup-post4-removebg-preview.png')),
                ),
                SizedBox(height: 16.0),
                Text(
                  "Hello, Param Joga",
                  style: GoogleFonts.balooBhaijaan2(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(FontAwesome.user_secret,
                size: 20.0, color: Colors.white),
            title: Text(
              "Legal Name",
              style: GoogleFonts.balooBhaijaan2(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.left,
            ),
            subtitle: Text(
              "Parmeshwar Joga",
              style: GoogleFonts.balooBhaijaan2(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 173, 170, 170)),
              textAlign: TextAlign.left,
            ),

            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(FontAwesome.phone, size: 16.0, color: Colors.white),
            title: Text(
              "Phone Number",
              style: GoogleFonts.balooBhaijaan2(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.left,
            ),
            subtitle: Text(
              "7993682865",
              style: GoogleFonts.balooBhaijaan2(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 173, 170, 170)),
              textAlign: TextAlign.left,
            ),
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.mail_rounded, size: 20.0, color: Colors.white),
            title: Text(
              "Email Id",
              style: GoogleFonts.balooBhaijaan2(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.left,
            ),
            subtitle: Text(
              "Parmeshwar5jan@gmail.com",
              style: GoogleFonts.balooBhaijaan2(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 173, 170, 170)),
            ),
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.favorite_border_rounded,
                size: 20.0, color: Colors.white),
            title: Text(
              "Favourites",
              style: GoogleFonts.balooBhaijaan2(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.left,
            ),
            subtitle: Text(
              "Bitcoin\nEther\nDogecoin",
              style: GoogleFonts.balooBhaijaan2(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 173, 170, 170)),
              textAlign: TextAlign.left,
            ),

            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.settings, size: 20.0, color: Colors.white),
            title: Text(
              "Settings",
              style: GoogleFonts.balooBhaijaan2(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 255, 255, 255)),
              textAlign: TextAlign.left,
            ),

            dense: true,

            // padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
