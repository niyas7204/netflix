import 'package:flutter/material.dart';

ValueNotifier<int> pageindexNotifier = ValueNotifier(0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: pageindexNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          onTap: (index) {
            pageindexNotifier.value = index;
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          currentIndex: newIndex,
          unselectedItemColor: const Color.fromARGB(255, 179, 167, 167),
          selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections), label: 'New & Hot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions), label: 'Fast Laughs'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ' Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Dowloads'),
          ],
        );
      },
    );
  }
}
