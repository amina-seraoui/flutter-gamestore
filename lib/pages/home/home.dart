import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widgets/category/category.dart';
import 'package:gamestore/pages/home/widgets/header.dart';
import 'package:gamestore/pages/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xFF5F67EA),
                Color(0xFF5F67EA),
                Color(0xFFE8E8E8),
              ]
            )
          ),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Transform(
                  transform: Matrix4.identity()..rotateZ(20),
                  origin: const Offset(150, 50),
                  child: Image.asset(
                    'assets/images/bg_liquid.png',
                    width: 200,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 200,
                  child: Transform(
                    transform: Matrix4.identity()..rotateZ(20),
                    origin: const Offset(150, 100),
                    child: Image.asset(
                      'assets/images/bg_liquid.png',
                      width: 200,
                    ),
                  ),
                ),
                Column(
                  children: [
                    const HeaderSection(),
                    const SearchSection(),
                    CategorySection(),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar());
  }
}

Widget NavigationBar() {
  return Container(
    color: const Color(0xFFE6E6E6),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        selectedItemColor: const Color(0xFF5F67EA),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            label: 'Accueil',
            icon: Icon(Icons.home_rounded, size: 50),
          ),
          BottomNavigationBarItem(
            label: 'Applications',
            icon: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.more_horiz_outlined, size: 30),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Films',
            icon: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.play_arrow_rounded, size: 30),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Livres',
            icon: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.auto_stories_rounded, size: 30),
            ),
          ),
        ],
      ),
    ),
  );
}
