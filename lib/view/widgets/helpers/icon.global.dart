import 'package:flutter/material.dart';

class IconGlobal extends StatelessWidget {
  final Icon icon;
  final dynamic navigationComponent;
  const IconGlobal({super.key, required this.icon, this.navigationComponent});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => navigationComponent));
        },
        icon: icon);
  }
}
