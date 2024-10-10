import 'package:flutter/material.dart';

class Nav_cart extends StatefulWidget {
  const Nav_cart({super.key});

  @override
  State<Nav_cart> createState() => _Nav_cartState();
}

class _Nav_cartState extends State<Nav_cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Cart Screen"),
      ),
    );
  }
}
