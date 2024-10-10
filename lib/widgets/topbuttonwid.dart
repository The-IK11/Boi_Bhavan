import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopButtonWidget extends StatelessWidget {
  const TopButtonWidget({
    Key? key,
    required this.screen,  // Assuming screen is a widget
    required this.text,
    required this.bgColor,
    this.textColor=Colors.grey,
  }) : super(key: key);

  final Widget screen;  // You might specify a specific widget type here if needed
  final Text text;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: () {
          Get.to(() => screen);  // Navigates to the provided screen
        },
        child: Center(child: text),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(40, 10),
          backgroundColor: bgColor,
          foregroundColor:textColor,
        ),
      ),
    );
  }
}
