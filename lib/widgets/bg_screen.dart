import 'package:flutter/material.dart';
class Bg_Screen extends  StatelessWidget{
  const Bg_Screen({Key?key,required this.child}):super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    final screen_size=MediaQuery.of(context).size;
    return Stack(
      children: [
        Image(image: AssetImage("assets/images/signup_image.png"),
          fit: BoxFit.cover,
          height: screen_size.height,
          width: screen_size.width,
        ),
        SafeArea(child: child)



      ],
    );

  }
}