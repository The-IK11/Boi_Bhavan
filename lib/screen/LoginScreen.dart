
import 'package:boi_bhavan/screen/home_Screen.dart';
import 'package:boi_bhavan/screen/signup_Screen.dart';
import 'package:boi_bhavan/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:boi_bhavan/widgets/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'forgot_Password_Screen.dart';
class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
final FirebaseAuthServices auth=FirebaseAuthServices();//for firebase_authentication

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
final _FormKey=GlobalKey<FormState>();//for validation

 TextEditingController emailController=TextEditingController();//for store data
 TextEditingController passwordController=TextEditingController();

bool _securityText=true;//for obscure password
class _LoginScreenState extends State<LoginScreen> {
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(

              children: [
                Container(child: Image(image: AssetImage(
                    "assets/image/istockphoto-963186372-612x612.jpg"),
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.cover,)),
                Container(
                  height: 400,
                  width: double.infinity,
                  color: Colors.deepOrange,
                  child: Form(
                    key: _FormKey,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Hello!", style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),),
                        Text("Sign in to your account"),
                        SizedBox(height: 20,),

                        Padding(
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: Card(
                            elevation: 10,
                            child: TextFormField(
                              autovalidateMode: AutovalidateMode
                                  .onUserInteraction,
                              controller: emailController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter your Email Address";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
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
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: Card(
                            elevation: 10,
                            child: TextFormField(
                              autovalidateMode: AutovalidateMode
                                  .onUserInteraction,
                              controller: passwordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter Your Password";
                                }
                                return null;
                              },
                              obscureText: _securityText,
                              obscuringCharacter: "*",
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(

                                  hintText: "Enter Password",
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Icon(Icons.lock),
                                  suffixIcon: IconButton(onPressed: () {
                                    setState(() {
                                      _securityText = !_securityText;
                                    });
                                  },
                                      icon: _securityText ? Icon(
                                          Icons.visibility) : Icon(
                                          Icons.visibility_off)),
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
                          onTap: () {
                            Get.to(() => ForgotPassword());
                          },
                          highlightColor: Colors.white,
                          focusColor: Colors.white,
                          splashColor: Colors.white.withOpacity(0.5),
                          child: Padding(
                            padding: EdgeInsets.only(left: 245),

                            child: Text("Forgot Your Password?",
                              style: TextStyle(fontWeight: FontWeight.w100,
                                  color: Colors.black38),),
                          ),
                        ),
                        SizedBox(height: 4,),
                        ElevatedButton(onPressed: () {
                          if (_FormKey.currentState!.validate())
                            signIn();
                        }, child: Text("Login"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                            textStyle: TextStyle(fontSize: 20),
                            minimumSize: Size(100, 40),
                          ),),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?", style: TextStyle(
                                fontSize: 15),),
                            InkWell(onTap: () {
                              Get.to(() => SignUp_Screen());
                            }, child: Text(" Creat",
                              style: TextStyle(fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1),))
                          ],
                        ),
                        SizedBox(height: 5,),
                        InkWell(
                          onTap: () {
                          signInWithGoogle();
                          },
                          child: Container(
                            height: 40,
                            width: 350,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(19)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 7, bottom: 7, right: 55),
                                  child: ClipRRect(
                                    child: Image.network(
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/480px-Google_%22G%22_logo.svg.png"),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text(
                                    "Sign in with Google",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),)),
                                )
                              ],
                            ),
                          ),
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

  void signIn() async {
    String email = emailController.text;
    String password = passwordController.text;
    User?user = await auth.signInWithEmailAndPassword(email, password);
    if (user != null) {
      print("SuccessFully logged In");
      navdelay();
    }
    else {
      showToast(message: "Some error occured");
      print("Some error occurred");
    }


  }
}
  void navdelay() async {
    Get.snackbar("Success", "Successfully Logged In ",
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      duration: Duration(seconds: 2),
    );
    await Future.delayed(Duration(seconds: 2));
    Get.to(() => Home_Screen());
  }
void signInWithGoogle() async {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  try {
    final GoogleSignInAccount? googleSignInAccount = await _googleSignIn
        .signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication = await
      googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
      Get.to(() => Home_Screen());
    }
  } catch (e) {
    showToast(message: "some error occured $e");
  }
}