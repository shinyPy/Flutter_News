import 'package:flutter/material.dart';
import 'package:flutter_news/view/widgets/contents/account.content.dart';
import 'package:flutter_news/view/widgets/contents/bookmark.content.dart';
import 'package:flutter_news/view/widgets/contents/home.contents.dart';

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
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 243, 0, 0),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting, // Add this line
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return HomeContents();
      case 1:
        return Bookmark();
      case 2:
        return ImageWithContainer();
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
