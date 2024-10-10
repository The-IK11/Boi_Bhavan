import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;

  const NavItem({required this.icon, required this.label, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 30,
          color: isActive ? Colors.white : Colors.black, // Change color based on isActive
        ),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black, // Change color based on isActive
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
