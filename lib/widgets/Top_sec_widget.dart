
import 'package:flutter/material.dart';

class top_sec_widget extends StatelessWidget {
  final String text;
  top_sec_widget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 4,left: 10),
        child: Container(height: 30,width: 140,
          decoration: BoxDecoration(
              color:Colors.deepOrange,
              borderRadius: BorderRadius.circular(4)
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 13,
                ),
              ),
              Text(text,style: TextStyle(fontSize: 9,fontWeight: FontWeight.w100,)),
              InkWell(
                onTap: (){},
                focusColor: Colors.grey,
                splashColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Container(
                    height: 20,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(child: Text("Buy",style: TextStyle(fontSize: 8,color: Colors.black),)),
                  ),
                ),
              )
            ],
          ),)

    );
  }
}

