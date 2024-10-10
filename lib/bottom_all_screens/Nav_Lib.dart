import 'package:flutter/material.dart';

class Nav_library extends StatefulWidget {
  const Nav_library({super.key});

  @override
  State<Nav_library> createState() => _Nav_libraryState();
}

class _Nav_libraryState extends State<Nav_library> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("Library Screen"),
      ),
    );
  }
}
