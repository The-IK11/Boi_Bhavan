import 'package:boi_bhavan/Data_Classes/card_list.dart';
import 'package:flutter/material.dart';
class CardScreenWidget extends StatelessWidget {

 final CardList cardList=CardList();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
            height:250 ,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      spreadRadius: 0.3,
                      blurRadius: 18,
                      offset: Offset(1,2 ))
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Just For You",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Spacer(),
                        TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(color:Colors.deepOrange),))
                      ],
                    ),
                    SizedBox(
                      height: 190,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cardList.bookList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Card(
                              elevation: 5,
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Container(
                                      height: 80,
                                      width: 65,
                                      child: Image.network(
                                        cardList.bookList[index]['image']!, // Use image from book list
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3.0, left: 3.0, right: 3.0, bottom: 1),
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: Colors.black),
                                        children: [
                                          TextSpan(text: cardList.bookList[index]['title']!), // Use title from book list
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Text(
                                   cardList.bookList[index]['author']!,
                                    style: TextStyle(fontSize: 9, color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3),
                                    child: RichText(
                                      text: TextSpan(
                                        text: cardList.bookList[index]['price']!, // Use price from book list
                                        style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Add to cart"),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(40, 20),
                                        backgroundColor: Colors.orangeAccent,
                                        foregroundColor: Colors.black,
                                        shape: BeveledRectangleBorder(),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),]
              ),
            )
        )
    );
  }
}
