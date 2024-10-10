import 'package:flutter/material.dart';

class Nav_Account extends StatefulWidget {
  const Nav_Account({super.key});

  @override
  State<Nav_Account> createState() => _Nav_AccountState();
}

class _Nav_AccountState extends State<Nav_Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("AccountSreen"),
      ),
    );
  }
}

