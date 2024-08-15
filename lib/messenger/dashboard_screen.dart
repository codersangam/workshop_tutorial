import 'package:flutter/material.dart';
import 'package:worksshop_tutorial/messenger/chat_screen.dart';
import 'package:worksshop_tutorial/messenger/stories_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    const ChatScreen(),
    const StoriesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/ChatRound.png',
                scale: 1.7,
                color: currentIndex == 0 ? Colors.blue : Colors.grey,
              ),
              label: 'Chats'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Exit.png',
                scale: 1.7,
                color: currentIndex == 1 ? Colors.blue : Colors.grey,
              ),
              label: 'Stories'),
        ],
      ),
    );
  }
}
