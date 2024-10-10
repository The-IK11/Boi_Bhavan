
import 'package:boi_bhavan/bottom_all_screens/Nav_home.dart';
import 'package:boi_bhavan/screen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      home: Nav_Home(),
    );
  }
}