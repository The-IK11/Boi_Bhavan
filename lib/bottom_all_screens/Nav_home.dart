import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/search_page.dart';
import '../widgets/bottom_navigationbar_screen.dart';
import '../widgets/slide_screens.dart';
import '../widgets/topbuttonwid.dart';

class Nav_Home extends StatefulWidget {
  const Nav_Home({super.key});

  @override
  State<Nav_Home> createState() => _Nav_HomeState();
}

class _Nav_HomeState extends State<Nav_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
            child: IconButton(onPressed: (){}, icon:Icon(Icons.message_rounded,color: Colors.black,)),
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
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              color: Colors.deepOrange
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: InkWell(
                  onTap: (){
                    Get.to(()=>SearchPage());
                  },
                  splashColor: Colors.blue.withOpacity(0.5),
                  highlightColor: Colors.blue.withOpacity(0.3),
                  child: Container(
                      height: 27,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(15),
                          color: Colors.white
                      ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text("     Search by book",style: TextStyle(color: Colors.grey),),
                        ),
                        SizedBox(width: 310,),
                        Icon(Icons.search)
                      ],
                    ),
                  ),
                ),
              )
            ),
          ),
          Container(
            height:30,
            width: MediaQuery.of(context).size.width,
            decoration:BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey,width: 1.0),
              )
            ),

              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    TopButtonWidget(screen: Nav_Home(), text:Text("Home"), bgColor: Colors.deepOrange,textColor:Colors.black),
                    TopButtonWidget(screen: Nav_Home(), text:Text("HSC"), bgColor: Colors.white,textColor:Colors.grey),
                    TopButtonWidget(screen: Nav_Home(), text:Text("Admission"), bgColor: Colors.white,textColor:Colors.grey),
                    TopButtonWidget(screen: Nav_Home(), text:Text("Stationary"), bgColor: Colors.white,textColor:Colors.grey),
                    TopButtonWidget(screen: Nav_Home(), text:Text("E-Book"), bgColor: Colors.white,textColor:Colors.grey),
                    TopButtonWidget(screen: Nav_Home(), text:Text("Electronics"), bgColor: Colors.white,textColor:Colors.grey),
                    TopButtonWidget(screen: Nav_Home(), text:Text("Super Store"), bgColor: Colors.white,textColor:Colors.grey),
                    TopButtonWidget(screen: Nav_Home(), text:Text("Kid Zone"), bgColor: Colors.white,textColor:Colors.grey),
                    TopButtonWidget(screen: Nav_Home(), text:Text("Islamic Books"), bgColor: Colors.white,textColor:Colors.grey),
                    TopButtonWidget(screen: Nav_Home(), text:Text("Kid Book"), bgColor: Colors.white,textColor:Colors.grey),
                    TopButtonWidget(screen: Nav_Home(), text:Text("Novels"), bgColor: Colors.white,textColor:Colors.grey),
                    TopButtonWidget(screen: Nav_Home(), text:Text("Science Fiction"), bgColor: Colors.white,textColor:Colors.grey),
                    TopButtonWidget(screen: Nav_Home(), text:Text("Board Books"), bgColor: Colors.white,textColor:Colors.grey),


                  ]
                ),
              ),

            ),
          SlideScreens(),
        
        ],
      )
    );
  }
}

