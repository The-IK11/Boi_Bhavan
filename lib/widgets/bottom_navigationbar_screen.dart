import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../bottom_all_screens/Nav_Acc.dart';
import '../bottom_all_screens/Nav_Category.dart';
import '../bottom_all_screens/Nav_Lib.dart';
import '../bottom_all_screens/Nav_cart.dat.dart';
import '../bottom_all_screens/Nav_home.dart';
import 'nav_icon_widget.dart';

class Bottom_nav_Screen extends StatefulWidget {
  const Bottom_nav_Screen({super.key});

  @override
  State<Bottom_nav_Screen> createState() => _Bottom_nav_ScreenState();
}

class _Bottom_nav_ScreenState extends State<Bottom_nav_Screen> {
  int _currentPage=0;
  static const List<Widget>All_pages=[
    Nav_Home(),
    Nav_Category(),
    Nav_cart(),
    Nav_library(),
    Nav_Account()


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: All_pages[_currentPage],
    bottomNavigationBar:CurvedNavigationBar(
      backgroundColor:Colors.white ,
      color: Colors.deepOrange,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 300),
      items: [
        NavItem(icon:Icons.home , label:"Home", isActive:_currentPage==0),
        NavItem(icon:Icons.category , label:"Category", isActive:_currentPage==1),
        NavItem(icon:Icons.shopping_cart , label:"Cart", isActive:_currentPage==2),
        NavItem(icon:Icons.library_books , label:"Library", isActive:_currentPage==3),
        NavItem(icon:Icons.person , label:"Account", isActive:_currentPage==4),

      ],
      onTap: (int index){
        setState(() {
          _currentPage=index;
        });
      },
    ),

    );
  }
}
