import 'package:boi_bhavan/screen/otp_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../widgets/bg_screen.dart';
class ForgotPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      // TextTheme textTheme =Theme.0f(context).textTheme,
       appBar:AppBar(
         leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
         title: Text("Verification",
           style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
         ,
       ),
       resizeToAvoidBottomInset:false,
       body: Bg_Screen(

         child:Padding(
           padding: EdgeInsets.only(left: 20,top: 20),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("Enter your email address for  reset your password .",style: TextStyle(color: Colors.grey,fontSize: 18),),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40      ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white54,
                      hintText: "Enter your phone number .",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Transparent border
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0), // Color when focused
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey), // Keep it transparent when enabled
                      ),
                    ),
                  ),
                ),
                SizedBox( height:25,),
                Center(
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Otp_Screen()));
                  },
                      child: Text("Send OTP",style: TextStyle(color: Colors.black,fontSize: 15,),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    minimumSize: Size(420, 60),
                  ),),
                )
              ],
            ) ,
         ),
       ),
     );
  }

}
