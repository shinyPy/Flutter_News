import 'package:flutter/material.dart';

class NewsCategoryList extends StatelessWidget {
  final List<String> categories;
  // final void Function(String) onCategorySelected;
  final VoidCallback onTap;
  NewsCategoryList({
    required this.categories,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: onTap,
              child: Chip(
                label: Text(categories[index]),
                backgroundColor: Colors.blue,
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
