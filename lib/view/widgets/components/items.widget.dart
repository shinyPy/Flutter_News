import 'package:flutter/material.dart';

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
          Image.network(
            imageUrl, // Updated to use imageUrl
            fit: BoxFit.cover,
            width: 200,
            height: 150,
          ),
          Text(title),
        ],
      ),
    );
  }
}
