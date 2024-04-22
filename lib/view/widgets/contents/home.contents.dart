import 'package:flutter/material.dart';

class HomeContents extends StatefulWidget {
  @override
  _HomeContentsState createState() => _HomeContentsState();
}

class _HomeContentsState extends State<HomeContents> {
  // Initialize newsItems with 'Trending' as the default category
  List<String> newsItems =
      List.generate(10, (index) => 'Trending News Item $index');
  // Set 'Trending' as the default category
  String currentCategory = 'Trending';

  void updateNewsItems(String category) {
    setState(() {
      currentCategory = category;
      // Update news items based on the selected category
      newsItems = List.generate(10, (index) => '$category News Item $index');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.network('https://picsum.photos/200/40',
            height: 40), // Random logo image
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('WEEKLY FEATURED',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FeaturedItem(
                      title: 'New tour at South Borneo',
                      imageUrl: 'https://picsum.photos/200/300'),
                  FeaturedItem(
                      title: 'Mortal Kombat 1',
                      imageUrl: 'https://picsum.photos/200/300'),
                  FeaturedItem(
                      title: 'EPL: Arteta...',
                      imageUrl: 'https://picsum.photos/200/300'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => updateNewsItems('Trending'),
                  child: Text('Trending'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: currentCategory == 'Trending'
                        ? Colors.red
                        : Colors.grey,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => updateNewsItems('Newest'),
                  child: Text('Newest'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: currentCategory == 'Trending'
                        ? Colors.red
                        : Colors.grey,
                  ),
                ),
              ],
            ),
            ListView.builder(
              physics:
                  NeverScrollableScrollPhysics(), // to disable ListView's scrolling
              shrinkWrap:
                  true, // to make ListView take space as per its children
              itemCount: newsItems.length, // number of news items
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(newsItems[index]),
                  subtitle: Text('Subtitle $index'),
                  leading: Image.network(
                      'https://picsum.photos/50/50'), // Random image for each news item
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FeaturedItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const FeaturedItem({Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(imageUrl,
              fit: BoxFit.cover), // Random image from Lorem Picsum
          Text(title),
        ],
      ),
    );
  }
}
