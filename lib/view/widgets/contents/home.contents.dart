import 'package:flutter/material.dart';
import 'package:flutter_news/view/widgets/components/news.widget.dart';
import 'package:flutter_news/view/widgets/components/list.widget.dart';
import 'package:flutter_news/view/widgets/helpers/news.category.dart';

class HomeContentWidget extends StatefulWidget {
  const HomeContentWidget({Key? key}) : super(key: key);

  @override
  _HomeContentWidgetState createState() => _HomeContentWidgetState();
}

class _HomeContentWidgetState extends State<HomeContentWidget> {
  // Dummy data, ganti dengan data sebenarnya
  List<String> newsTitles = [
    'Flutter News 1',
    'Flutter News 2',
    'Flutter News 3',
  ];
  List<String> newsDesc = [
    'News Article in Flutter 1',
    'News Article in Flutter 2',
    'News Article in Flutter 3',
  ];

  List<String> newsCategories = [
    'Technology',
    'Sports',
    'Entertainment',
    'Science'
  ];
  String selectedCategory = 'Technology'; // Initially selected category

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        toolbarHeight: 200,
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _handleRefresh,
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.all(15.0),
                sliver: SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < newsTitles.length; i++)
                          NewsWidget(
                            title: newsTitles[i],
                            description: newsDesc[i],
                            imageUrl: 'assets/images/rect.png',
                            onTap: () {
                              print('${newsTitles[i]} tapped!');
                            },
                          ),
                        const SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 0.1,
                ),
              ),
              SliverToBoxAdapter(
                child: NewsCategoryList(
                  categories: newsCategories,
                  onTap: () {
                    print('${newsCategories} tapped!');
                  },
                ),
              ),

// Add more ListContents widgets as needed
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handleRefresh() async {
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      newsTitles = [
        'Refreshed News 1',
        'Refreshed News 2',
        'Refreshed News 3',
      ];
      newsDesc = [
        'Refreshed Article in Flutter 1',
        'Refreshed Article in Flutter 2',
        'Refreshed Article in Flutter 3',
      ];
    });
  }
}
