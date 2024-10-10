import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';

import '../bottom_all_screens/Nav_home.dart';
import '../widgets/bg_screen.dart';
import 'indigator_Screen.dart';
class Reset_Password extends  StatefulWidget{
  @override
  State<Reset_Password> createState() => _Reset_PasswordState();
}

class _Reset_PasswordState extends State<Reset_Password> {
  final fromKey=GlobalKey<FormState>();

  TextEditingController newPasswordController=TextEditingController();

  TextEditingController confirmPasswordController=TextEditingController();

  bool _securityText=true;



  Widget build(BuildContext  context){
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      title: Text("Verification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
        backgroundColor: Colors.redAccent,
    ),
          body:Bg_Screen(
              child:Padding(padding:EdgeInsets.only(top: 80.0,right: 20,left: 20),
              child: Form(
                key: fromKey,
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Setup your new password",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    TextFormField(
                      autovalidateMode:AutovalidateMode.onUserInteraction,
                      obscureText: _securityText,
                      obscuringCharacter: "*",
                      controller: newPasswordController,
                      validator: (value){
                        if(value==null||value.isEmpty){
                          return "Enter your new Password";
                        }
                        else if(value.length<8){
                          return "Password must be at least 8 characters long";
                        }

                        if (!RegExp(r'[A-Z]').hasMatch(value)) {
                          return 'Password must contain at least one uppercase letter';
                        }
                        if (!RegExp(r'[a-z]').hasMatch(value)) {
                          return 'Password must contain at least one lowercase letter';
                        }

                        if (!RegExp(r'[0-9]').hasMatch(value)) {
                          return 'Password must contain at least one digit';
                        }

                        if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
                          return 'Password must contain at least one special character';
                        }

                        return null;
                      },
                      toolbarOptions: ToolbarOptions(
                        copy: true,
                        cut: true,
                        paste: true,
                        selectAll: true,
                      ),
                      decoration:InputDecoration(

                        hintText: "Password",
                        suffixIcon:IconButton(onPressed: (){
                          setState(() {
                            _securityText=!_securityText;
                          });
                        }, icon: Icon(_securityText?Icons.visibility:Icons.visibility_off)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: confirmPasswordController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value){
                        if(value==null||value.isEmpty){
                          return "Enter Your confirm password";
                        }
                        else if(value!=newPasswordController.text){
                          return "Your password isn't same ,please try again";
                        }
                        return null;
                      },
                      obscureText: true,
                      obscuringCharacter: "*",
                      toolbarOptions: ToolbarOptions(
                        copy: true,
                        cut: true,
                        paste: true,
                        selectAll: true,
                      ),
                      decoration:InputDecoration(
                          suffixIcon:IconButton(onPressed: (){
                            setState(() {
                              _securityText=!_securityText;
                            });
                          }, icon: Icon(_securityText?Icons.visibility:Icons.visibility_off)),
                        hintText: "Confirm Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: ElevatedButton(onPressed: (){
                        if(fromKey.currentState!.validate()){
                          Get.snackbar(
                            'Success',
                            'Your password has been reset successfully!',
                            snackPosition: SnackPosition.TOP,
                            duration: Duration(seconds: 3),
                            backgroundColor: Colors.orange,
                            colorText: Colors.black,
                          );
                        Get.to(()=>Indigator_Screen(navigateTo: Nav_Home()));
                        }
                      }, child: Text("Continue",style: TextStyle(fontSize: 20,color: Colors.black),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        minimumSize: Size(430, 60)
                      ),),
                    )
                  ],
                ),
              ),)
          ) ,
        )
    );
  }
}