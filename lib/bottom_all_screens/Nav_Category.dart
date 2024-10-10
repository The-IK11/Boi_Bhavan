import 'package:flutter/material.dart';

class Nav_Category extends StatefulWidget {
  const Nav_Category({super.key});

  @override
  State<Nav_Category> createState() => _Nav_CategoryState();
}

class _Nav_CategoryState extends State<Nav_Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("CategoryScreen"),
      ),
    );
  }
}
