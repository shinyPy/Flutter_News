import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final Function onTap;

  NewsWidget({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Card(
        elevation: 2,
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: imageUrl.isNotEmpty
                  ? _buildImageWidget(imageUrl)
                  : Container(
                      width: 150, // Set the width according to your design
                      height: 150,
                      color: const Color.fromARGB(255, 227, 227, 227),
                      child: Center(
                        child: Icon(
                          Icons.image,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWidget(String imageUrl) {
    if (imageUrl.startsWith('http') || imageUrl.startsWith('https')) {
      return Image.network(
        imageUrl,
        width: 270, // Set the width according to your design
        height: 150,
        fit: BoxFit.cover,
      );
    } else {
      return Image.asset(
        imageUrl,
        width: 270, // Set the width according to your design
        height: 150,
        fit: BoxFit.cover,
      );
    }
  }
}
