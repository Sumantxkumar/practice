import 'package:flutter/material.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    NotificationsScreen(),
    MessagesScreen(),
  ];

  final List<Color> _backgroundColors = [
    Colors.tealAccent,
    Colors.lightBlueAccent,
    Colors.lightGreenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColors[_currentIndex],
      body: Column(
        children: [
          Expanded(
            child: _screens[_currentIndex],
          ),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIconButton(
                  icon: Icons.home,
                  index: 0,
                ),
                _buildIconButton(
                  icon: Icons.notifications,
                  index: 1,
                ),
                _buildIconButton(
                  icon: Icons.message,
                  index: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  IconButton _buildIconButton({required IconData icon, required int index}) {
    return IconButton(
      icon: Icon(
        icon,
        color: _currentIndex == index ? Colors.teal : Colors.grey,
      ),
      onPressed: () {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Home Screen',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, size: 50),
              SizedBox(width: 20),
              Icon(Icons.star, size: 50),
            ],
          ),
        ],
      ),
    );
  }
}

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Notifications Screen',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.notifications, size: 50),
              SizedBox(width: 20),
              Icon(Icons.notifications_active, size: 50),
            ],
          ),
        ],
      ),
    );
  }
}

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Messages Screen',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.message, size: 50),
              SizedBox(width: 20),
              Icon(Icons.chat, size: 50),
            ],
          ),
        ],
      ),
    );
  }
}
