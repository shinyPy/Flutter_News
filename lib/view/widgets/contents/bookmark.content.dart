import 'package:flutter/material.dart';
import 'package:flutter_news/view/widgets/components/list.widget.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Bookmark',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.camera_alt, color: Colors.black),
          onPressed: () {
            // Add action for camera icon here
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.send, color: Colors.black),
            onPressed: () {
              // Add action for send icon here
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: List.generate(5 * 2 - 1, (index) {
            // Adjust the count to accommodate dividers
            if (index % 2 == 0) {
              // This is a content item
              int itemIndex =
                  index ~/ 2; // Calculate the actual index of the content item
              return Expanded(
                child: ListContents(
                  title: 'Test ${itemIndex + 1}',
                  subtitle: 'Test subtitle ${itemIndex + 1}',
                  time: '10:${itemIndex}0 pm',
                ),
              );
            } else {
              // This is a divider
              return Divider(); // Add Divider widget here
            }
          }),
        ),
      ),
    );
  }
}
