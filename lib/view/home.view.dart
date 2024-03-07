import 'package:flutter/material.dart';
import 'package:flutter_news/view/widgets/components/navbar.bottom.dart';

class Homepage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Navbar(),
    );
  }
}
