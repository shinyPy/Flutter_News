import 'package:flutter/material.dart';
import 'package:flutter_news/view/widgets/home/home.contents.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: Colors.green),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.orange),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return HomeContentWidget(); // Use HomeContentWidget for the home page
      case 1:
        return Center(
          child: Text('Bookmark Page'),
        );
      case 2:
        return Center(
          child: Text('Account Page'),
        );
      default:
        return Container();
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: Navbar(),
  ));
}
