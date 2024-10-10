
import 'package:boi_bhavan/screen/home_Screen.dart';
import 'package:boi_bhavan/screen/signup_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'forgot_Password_Screen.dart';
class LoginScreen extends StatelessWidget{
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
          
            children: [
              Container(child: Image(image:AssetImage("assets/image/istockphoto-963186372-612x612.jpg"),height: 400,width: double.infinity,fit: BoxFit.cover,)),
               Container(
                   height: 350,
                  width:double.infinity,
                  color: Colors.deepOrange,
                 child: Form(
                   child:Column(
                   children: [
                     SizedBox(height:10,),
                     Text("Hello!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                     Text("Sign in to your account"),
                     SizedBox(height: 20,),

                     Padding(
                       padding: EdgeInsets.only(left: 50,right: 50),
                       child: Card(
                         elevation: 10,
                         child: TextFormField(
                           keyboardType: TextInputType.emailAddress,
                           decoration:InputDecoration(
                             filled: true,
                           fillColor: Colors.white,
                             labelText: "Email Address",
                             labelStyle: TextStyle(fontWeight: FontWeight.bold),
                             hintText: "Enter Your  Email Address",
                               prefixIcon: Icon(Icons.email),
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10)
                             )
                           ),
                         ),
                       ),

                     ),
                     SizedBox(height: 10,),
                     Padding(
                       padding: EdgeInsets.only(left: 50,right: 50),
                       child: Card(
                         elevation: 10,
                         child: TextFormField(
                           obscureText: true,
                           obscuringCharacter: "*",
                           keyboardType:TextInputType.text,
                           decoration: InputDecoration(

                             labelText: "Password",
                             labelStyle: TextStyle(fontWeight: FontWeight.bold),
                             hintText: "Enter PassWord",
                             fillColor: Colors.white,
                             filled: true,
                             prefixIcon: Icon(Icons.lock),
                             suffixIcon: Icon(Icons.remove_red_eye_sharp),
                             border: OutlineInputBorder(

                               borderRadius: BorderRadius.circular(10),

                             )
                           ),
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 4,
                     ),
                     InkWell(
                       onTap: (){
                         Get.to(()=>ForgotPassword());
                       },
                       highlightColor: Colors.white,
                       focusColor: Colors.white,
                       splashColor: Colors.white.withOpacity(0.5),
                       child: Padding(
                         padding: EdgeInsets.only(left: 245),

                         child: Text("Forgot Your Password?",style: TextStyle(fontWeight: FontWeight.w100,color: Colors.black38),),
                       ),
                     ),
                     SizedBox(height: 4,),
                     ElevatedButton(onPressed: (){
                       navdelay();

                     }, child: Text("Login"),
                       style:ElevatedButton.styleFrom(
                         foregroundColor: Colors.white,
                         backgroundColor: Colors.black,
                         textStyle: TextStyle(fontSize: 20),
                         minimumSize:Size(100,40) ,
                       ),),
                     SizedBox(
                       height: 3,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text("Don't have an account?",style: TextStyle(fontSize: 15),),
                         InkWell(onTap: (){
                           Get.to(()=>SignUp_Screen());
                         },child: Text(" Creat",
                           style: TextStyle(fontSize: 15,
                             fontWeight:FontWeight.bold,
                             decoration: TextDecoration.underline,
                              decorationThickness: 1),))
                       ],
                     )
                   ],
                 ),),
                ),
          
            ],
          ),
        ),
      )
    );
  }
}
void navdelay()async{
  Get.snackbar("Success", "Successfully Logged In ",
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.white,
    colorText: Colors.black,
    duration: Duration(seconds: 2),
  );
  await Future.delayed(Duration(seconds: 2));
  Get.to(()=>Home_Screen());

}