import 'package:flutter/material.dart';
import 'package:flutter_news/view/widgets/components/items.widget.dart';

class HomeContents extends StatefulWidget {
  @override
  _HomeContentsState createState() => _HomeContentsState();
}

class _HomeContentsState extends State<HomeContents> {
  List<String> newsItems =
      List.generate(5, (index) => 'Trending News Item $index');
  String currentCategory = 'Trending';

  void updateNewsItems(String category) {
    setState(() {
      currentCategory = category;
      newsItems = List.generate(5, (index) => '$category News Item $index');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.network(
          'https://media.discordapp.net/attachments/1041516646222798872/1233210464989876295/logo.png?ex=662c443e&is=662af2be&hm=7e12302537e08466d4a3ae748d3cc379b201004162255dc127c282b993be2dbe&=&format=webp&quality=lossless&width=398&height=118',
          height: 40,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(), // Updated scroll physics
        child: Column(
          children: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'WEEKLY FEATURED',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FeaturedItem(
                    title: 'New tour at South Borneo',
                    imageUrl: 'https://via.placeholder.com/200',
                  ),
                  FeaturedItem(
                    title: 'Mortal Kombat 1',
                    imageUrl: 'https://via.placeholder.com/200',
                  ),
                  FeaturedItem(
                    title: 'EPL: Arteta...',
                    imageUrl: 'https://via.placeholder.com/200',
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => updateNewsItems('Trending'),
                        child: Text(
                          'Trending',
                          style: TextStyle(
                            color: currentCategory == 'Trending'
                                ? Colors.white
                                : Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: currentCategory == 'Trending'
                              ? Colors.red
                              : Colors.grey[300],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => updateNewsItems('Newest'),
                        child: Text(
                          'Newest',
                          style: TextStyle(
                            color: currentCategory == 'Newest'
                                ? Colors.white
                                : Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: currentCategory == 'Newest'
                              ? Colors.red
                              : Colors.grey[300],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: newsItems.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ListTile(
                          title: Text(
                            newsItems[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Subtitle $index',
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          leading: Image.network(
                            'https://via.placeholder.com/100',
                            fit: BoxFit.cover, // Updated BoxFit property
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
