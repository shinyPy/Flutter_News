import 'package:flutter/material.dart';

class ImageWithContainer extends StatelessWidget {
  const ImageWithContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('Account', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              // Navigate to settings page
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[850],
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'email@example.com',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: ListTile.divideTiles(
                color: Colors.grey,
                tiles: [
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.black),
                    title:
                        Text('Profile', style: TextStyle(color: Colors.black)),
                    onTap: () {
                      // Navigate to profile page
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications, color: Colors.black),
                    title: Text('Notifications',
                        style: TextStyle(color: Colors.black)),
                    onTap: () {
                      // Navigate to notifications page
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.security, color: Colors.black),
                    title: Text('Privacy & Security',
                        style: TextStyle(color: Colors.black)),
                    onTap: () {
                      // Navigate to privacy & security page
                    },
                  ),
                ],
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ImageWithContainer(),
  ));
}
