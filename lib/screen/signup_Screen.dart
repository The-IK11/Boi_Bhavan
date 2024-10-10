import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'home_Screen.dart';
import 'indigator_Screen.dart';
class SignUp_Screen extends StatelessWidget {
  final FormKey=GlobalKey<FormState>();
  TextEditingController  _f_nmaeController=TextEditingController();
  TextEditingController _L_nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController  numberController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
              decoration:BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/signup_image.png"),
                fit: BoxFit.cover)
              ),
            child: Form(
              key: FormKey,
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:70,),
                  Padding (
                      padding: EdgeInsets.only(left: 25,top: 30),
                      child: Text("Creat Account",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
                  SizedBox(height:50,),
                      Padding(
                        padding: EdgeInsets.only(left: 20,right: 100),
                        child: Card(
                          elevation: 5,
                          child: TextFormField(
                            maxLength: 12,
                            controller:_f_nmaeController,
                            validator: (value){
                             if(value==null ||value.length<4){
                              return "Please ,Enter Your Name below 4 character";
                             }
                             return null;
                            },
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "First Name",
                              hintStyle: TextStyle(fontSize: 15,color: Colors.black),

                              focusColor: Colors.transparent,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color:Colors.transparent,)
                              )
                            ),
                          ),
                        ),
                      ),
                  SizedBox(height:10,),
                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 100),
                    child: Card(
                      elevation: 5,
                      child: TextFormField(
                       controller: _L_nameController,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Last Name(Optional)",
                            hintStyle: TextStyle(fontSize: 15,color: Colors.black),

                            focusColor: Colors.transparent,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color:Colors.transparent,)
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:10,),
                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 100),
                    child: Card(
                      elevation: 5,
                      child: TextFormField(
                        controller: emailController,
                        maxLength: 30,
                        validator: (value){
                          if(value==null||value.isEmpty){
                           return "Please ,enter your valid email ";
                          }
                          else if(!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)){
                            return "Enter valid email ";
                          }
                          return null;

                        },
                        decoration: InputDecoration(

                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Email",
                            hintStyle: TextStyle(fontSize: 15,color: Colors.black),

                            focusColor: Colors.transparent,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color:Colors.transparent,)
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:10,),
                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 100),
                    child: Card(
                      elevation: 5,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: numberController,
                        validator: (value){
                          if(value==null||value.isEmpty){
                            return"Please, enter your phone number";
                          }
                          else if(value.length<=12){
                             return "Enter At least 12 number";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Phone Number",
                            hintStyle: TextStyle(fontSize: 15,color: Colors.black),

                            focusColor: Colors.transparent,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color:Colors.transparent,)
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:10,),
                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 100),
                    child: Card(
                      elevation: 5,
                      child: TextFormField(
                        controller: passwordController,
                        validator: passwordvalidator,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Password",
                            hintStyle: TextStyle(fontSize: 15,color: Colors.black),

                            focusColor: Colors.transparent,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color:Colors.transparent,)
                            )
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:300,top:20,right:70),
                    child: ElevatedButton(onPressed: (){
                     if(FormKey.currentState!.validate())
                      navScreen();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red
                    ), child: const Text("Sign Up ",style:TextStyle(color:Colors.white)),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:150),
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: RichText(text: TextSpan(
                        text: "Have an account?",
                        children: [
                          TextSpan(
                            text: " Login",style: TextStyle(fontWeight:FontWeight.bold,)
                          )
                        ]
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void navScreen()async{
  Get.snackbar("🎉 Signup Complete!", "Welcome aboard! We're excited to have you with us. Check your email for a confirmation.",
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      duration: Duration(seconds: 2),
      boxShadows:[BoxShadow(
        color: Colors.grey,
        offset: Offset(3, 4),
        blurRadius:10.5,
        blurStyle:BlurStyle.normal,

      )] );
  await Future.delayed(Duration(seconds: 1));
  Get.to(()=>Indigator_Screen(navigateTo: Home_Screen()));

}
String? passwordvalidator(String?value){
  if(value==null||value.isEmpty){
    return "Please enter your password";
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
}

