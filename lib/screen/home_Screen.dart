import 'package:flutter/material.dart';


import '../widgets/bottom_navigationbar_screen.dart';
class Home_Screen extends StatefulWidget{
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar:Bottom_nav_Screen(),
      drawer: Drawer(),
      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 5,
        actions: [
           IconButton(onPressed:(){}, icon:Icon(Icons.favorite_outline)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined)),
          Container(
            padding: EdgeInsets.all(0.20),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(10),
              shape:BoxShape.rectangle

            ),
            child: IconButton(onPressed: (){}, icon:Icon(Icons.message_rounded,color: Colors.white,)),
          ),
          SizedBox(width: 3,)
        ],

        title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(text: TextSpan(text: "বই",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          children: [
            TextSpan(text: "ভবন",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.deepOrange),)
          ])),
          SizedBox(width: 10,),
          Container(height: 50,
              width: 50,
              //color: Colors.transparent,
              child: Image(image: AssetImage("assets/images/images.png",),fit: BoxFit.contain,colorBlendMode: BlendMode.srcIn, ),)

        ],
      ),
    ),
        centerTitle: true,
      ),
      body:Center(),
    );
  }
}