import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cryptowatcher/onboarding/graph/fl_chart_exp.dart';
import 'package:cryptowatcher/onboarding/graph/source/source.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 23, 8, 43),
            Color.fromARGB(255, 23, 8, 43),
          ],
        )),
        child: SafeArea(
            child: Stack(
          fit: StackFit.expand,
          children: [Homepage()],
        )),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();
  toggleMenu([bool end = false]) {
    if (end) {
      final state = _endSideMenuKey.currentState!;
      if (state.isOpened) {
        state.closeSideMenu();
      } else {
        state.openSideMenu();
      }
    } else {
      final state = _sideMenuKey.currentState!;
      if (state.isOpened) {
        state.closeSideMenu();
      } else {
        state.openSideMenu();
      }
    }
  }

  Scaffold dashboard() {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 44, 3, 95),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 23, 8, 43),
              Color.fromARGB(255, 119, 64, 182),
              Color.fromARGB(255, 255, 255, 255),
            ],
          )),
          child: SafeArea(
              child: Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ColumnSuper(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => toggleMenu(),
                          child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 6.0, color: Colors.white),
                              ),
                              height: 40,
                              width: 40,
                              child: const Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'lib/assets/geosyrup-post4-removebg-preview.png'))),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Hi, Param',
                          style: GoogleFonts.balooBhaijaan2(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: const Color.fromARGB(255, 255, 255, 255)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  CupertinoCard(
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
                          Color.fromARGB(255, 181, 44, 250),
                          Color.fromARGB(255, 152, 37, 234),
                          Color.fromARGB(255, 149, 33, 245),
                          Color.fromRGBO(180, 40, 240, 1.0),
                        ],
                      ),
                    ),
                    elevation: 40.0,
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
                                padding:
                                    const EdgeInsets.only(left: 20.0, top: 40),
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
                                          'lib/assets/geosyrup-post3-removebg-preview 2.png')),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child:
                        SizedBox(height: 130, width: 400, child: FiChartPage()),
                  ),
                  // Text('bhsdfh'),
                  Container(
                    height: 400,
                    child: CoinViewer(),
                  )
                ]),
              ),
            ],
          )),
        ));
  }

  SideMenu SideProfile() {
    return SideMenu(
      key: _endSideMenuKey,
      inverse: true, // end side menu
      background: Color.fromARGB(255, 112, 17, 124),
      type: SideMenuType.slideNRotate,
      menu: Padding(
        padding: const EdgeInsets.only(left: 35.0),
        child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 135, 83, 194),
                Color.fromARGB(255, 183, 153, 216),
                Color.fromARGB(255, 228, 226, 229),
                Color.fromARGB(255, 255, 255, 255),
              ],
            )),
            child: buildMenu()),
      ),
      onChange: (isOpened) {
        setState(() => isOpened = isOpened);
      },
      child: SideMenu(
        key: _sideMenuKey,
        menu: buildMenu(),
        type: SideMenuType.slideNRotate,
        onChange: (isOpened) {
          setState(() => isOpened = isOpened);
        },
        child: IgnorePointer(ignoring: isOpened, child: dashboard()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SideProfile();
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),

      /// In AnimSearchBar widget, the width, textController, onSuffixTap are required properties.
      /// You have also control over the suffixIcon, prefixIcon, helpText and animationDurationInMilli
      child: AnimSearchBar(
        width: 400,
        searchIconColor: const Color.fromARGB(255, 89, 1, 161),
        textFieldIconColor: const Color.fromARGB(255, 89, 1, 161),
        helpText: 'Search for Crypto',
        color: Colors.grey.shade200,
        prefixIcon: const Icon(Bootstrap.search),
        suffixIcon: const Icon(Icons.delete_outline_rounded),
        textFieldColor: Colors.grey.shade200,
        style: GoogleFonts.balooBhai2(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: const Color.fromARGB(255, 0, 0, 0)),
        boxShadow: true,
        textController: textController,
        onSuffixTap: () {
          setState(() {
            textController.clear();
          });
        },
        onSubmitted: (String) {},
      ),
    );
  }
}

Widget buildMenu() {
  return Padding(
    padding: const EdgeInsets.only(top: 50.0),
    child: SafeArea(
      child: SingleChildScrollView(
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
              leading: const Icon(FontAwesome.phone,
                  size: 16.0, color: Colors.white),
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
              leading: const Icon(Icons.mail_rounded,
                  size: 20.0, color: Colors.white),
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
      ),
    ),
  );
}
