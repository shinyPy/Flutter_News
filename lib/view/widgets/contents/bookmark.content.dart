import 'package:flutter/material.dart';
import 'package:flutter_news/view/widgets/components/list.widget.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: List.generate(5, (index) {
            return Expanded(
              child: ListContents(
                title: 'Test ${index + 1}',
                subtitle: 'Test subtitle ${index + 1}',
                time: '10:${index}0 pm',
              ),
            );
          }),
        ),
      ),
    );
  }
}
