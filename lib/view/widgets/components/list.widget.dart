import 'package:flutter/material.dart';
import 'package:flutter_news/utils/global.colors.dart';

class ListContents extends StatelessWidget {
  const ListContents(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.time})
      : super(key: key);

  final String title;
  final String subtitle;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildListItem(title: title, subtitle: subtitle, time: time),
        Divider(
          color: Colors.black,
          height: 20,
          thickness: 0.1,
        ),
        // Add more list items as needed
      ],
    );
  }

  Widget buildListItem(
      {required String title, required String subtitle, required String time}) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundColor: GlobalColors.mainColor,
      ),
      trailing: Text(time),
    );
  }
}
