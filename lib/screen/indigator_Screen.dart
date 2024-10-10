import 'dart:async';

import 'package:flutter/material.dart';

class Indigator_Screen extends StatefulWidget{
  final Widget navigateTo;
  const Indigator_Screen({Key ? key , required this.navigateTo}) :super(key: key);

  @override
  State<Indigator_Screen>createState()=>_Indigator_Screen();
}
class _Indigator_Screen extends State<Indigator_Screen>{
  void initState(){
   super.initState();
   Timer(Duration(seconds: 2),(){
     Navigator.pushReplacement(context , MaterialPageRoute(builder: (context)=>widget.navigateTo));
   });
  }
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: const CircularProgressIndicator(
          value: null,
          backgroundColor: Colors.orange,
          valueColor:AlwaysStoppedAnimation(Colors.red),
        ),
      ),
    );
  }
}
