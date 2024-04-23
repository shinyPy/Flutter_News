import 'package:flutter/material.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample data for the grid of bookmarks
    final List<Map<String, dynamic>> bookmarks = [
      {
        "title": "Mortal Kombat 1",
        "subtitle": "Introducing New Kameo Fighter System",
        "imageUrl": "https://via.placeholder.com/150"
      },
      {
        "title": "Remain alert against drug",
        "subtitle": "BNN tells migrant workers",
        "imageUrl": "https://via.placeholder.com/150"
      },
      {
        "title": "Indonesian Hercules aircraft",
        "subtitle": "carrying Gaza equipment arrives in Jordan",
        "imageUrl": "https://via.placeholder.com/150"
      },
      {
        "title": "Ministry projects US17.3",
        "subtitle": "billion turnover during Eid momentum",
        "imageUrl": "https://via.placeholder.com/150"
      },
      {
        "title": "Explosion at Army ammo",
        "subtitle": "depot affected 65 tons of munitions",
        "imageUrl": "https://via.placeholder.com/150"
      },
      {
        "title": "Indonesia expects 6 sport",
        "subtitle": "climbing athletes to qualify for Olympics",
        "imageUrl": "https://via.placeholder.com/150"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Bookmarks'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          childAspectRatio: 0.7, // Adjusted aspect ratio for smaller items
          crossAxisSpacing: 10, // Horizontal space between items
          mainAxisSpacing: 10, // Vertical space between items
        ),
        itemCount: bookmarks.length,
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  bookmarks[index]["imageUrl"],
                  fit: BoxFit.cover,
                  height: 100, // Adjusted height
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    bookmarks[index]["title"],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    bookmarks[index]["subtitle"],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
