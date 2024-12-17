import 'package:flutter/material.dart';
import 'package:quantum_sit/Features/Home/presentation/pages/home_page.dart';
import 'package:quantum_sit/Features/Menu/presentation/pages/morePage.dart';
import 'package:quantum_sit/core/dummy_pages/classesPage.dart';
import 'package:quantum_sit/core/dummy_pages/clubsPages.dart';
import 'package:quantum_sit/core/dummy_pages/discussionPage.dart';

class ButtomNavigatorBarPage extends StatefulWidget {
  const ButtomNavigatorBarPage({super.key});

  @override
  State<ButtomNavigatorBarPage> createState() => _ButtomNavigatorBarPageState();
}

class _ButtomNavigatorBarPageState extends State<ButtomNavigatorBarPage> {
  int index = 2;
  void _onItemTapped(int i) {
    setState(() {
      if (i == 0) {
        Navigator.of(context).push(_createRoute(MorePage()));
      } else {
        index = i;
      }
    });
  }

  List<Widget> pages = [
    MorePage(),
    Classespage(),
    HomePage(),
    ClubsPages(),
    DiscussingPage()
  ];

  Route _createRoute(Widget child) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(-1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: runBody(index, context),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/more-icon.png"),
            ),
            label: 'More',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/classes-icon.png"),
            ),
            label: 'Classes',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/dasboard-icon.png"),
            ),
            label: 'Dasboard',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/clubs-icon.png"),
            ),
            label: 'Clubs',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/discussion-icon.png"),
            ),
            label: 'Discussion',
          ),
        ],
        currentIndex: index,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
      ),
    );
  }

  Widget? runBody(int index, BuildContext context) {
    if (index == 0) {
      Navigator.of(context).push(_createRoute(MorePage()));

      return null;
    } else {
      return IndexedStack(index: index, children: const [
        MorePage(),
        Classespage(),
        HomePage(),
        ClubsPages(),
        DiscussingPage()
      ]);
    }
  }
}
