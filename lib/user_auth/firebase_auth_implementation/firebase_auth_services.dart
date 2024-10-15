import 'package:boi_bhavan/widgets/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class FirebaseAuthServices{
  FirebaseAuth _auth=FirebaseAuth.instance;
  Future<User?>signUpWithEmailAndPassword(String email,String password)async{

    try{
      UserCredential credential=await _auth.createUserWithEmailAndPassword(email: email, password: password);
        return credential.user;

    }  on FirebaseAuthException catch(e){
    if(e.code=="email-already-in-use"){
      showToast(message: "This email Address is already in use");
      Get.snackbar("Try  with another email","This email Address is already in use"

      );
    }
    else{
      showToast(message: "An error occurred: ${e.code}");
    }
    }
    return null;

  }

  Future<User?>signInWithEmailAndPassword(String email,String password)async{
    try{
      UserCredential credential=await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    on FirebaseAuthException catch(e){
    if(e.code=="user-not-found"||e.code=="wrong-password"){
      showToast(message: "Invalid Password,Enter valid password .");
    }
    else{
      showToast(message: "An error occurred :${e.code}");
    }
    }
    return null;
  }

}
