
import 'package:boi_bhavan/bottom_all_screens/Nav_home.dart';
import 'package:boi_bhavan/screen/LoginScreen.dart';
import 'package:boi_bhavan/screen/SplashScreen.dart';
import 'package:boi_bhavan/screen/practice_ui.dart';
import 'package:boi_bhavan/widgets/bottom_navigationbar_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(options: FirebaseOptions(apiKey:"AIzaSyBfz5N_7lO5VCFC_0a5Y8Nr6f19HurLr98", appId:"1:521438390609:web:36ce7a8a46837a98804b70", messagingSenderId:"521438390609", projectId:"boi-bhavan"),);
  }
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      home:LoginScreen(),
    );
  }
}