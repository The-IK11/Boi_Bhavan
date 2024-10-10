import 'package:boi_bhavan/screen/reset_Password.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets/bg_screen.dart';
class Otp_Screen extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title: Text("Verification",
          style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
        ,
      ),
      body: Bg_Screen(
          child:Padding(
            padding: EdgeInsets.only(left: 40,top: 40,right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("We send you code to verify your number .",style: TextStyle(fontSize: 16),),
                SizedBox(
                  height: 30,
                ),
                Text("Enter Your OTP code here",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),
                PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      selectedFillColor: Colors.white
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  appContext: context,
                ),
                SizedBox(height: 20,),
                Center(
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Reset_Password()));
                    },
                      child: Text("Submit",style: TextStyle(fontSize: 20,color: Colors.black,)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(430,60)
                    ),))
              ],
                  ),
          )),
    );
  }
}