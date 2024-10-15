import 'package:flutter/material.dart';

class PracticeUi extends StatelessWidget {
   PracticeUi({super.key});

  final List<Map<String, String>> bookList = [
    {
      "title": "Flutter: The Story of\nFour Sisters",
      "author": "Erin E. Moulton",
      "image": "https://m.media-amazon.com/images/I/61MbVaFIaAL._AC_UF1000,1000_QL80_.jpg",
      "price": "TK. 700"
    },
    {
      "title": "HSC English\nExtension",
      "author": "Elias Khan",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCaHabGDHGWf2wXv9vNWMc0DraZceEQNiL_A&s",
      "price": "TK. 530"
    },
    {
      "title": "Islam Akidah\nAnd Manhaz",
      "author": "Ali Hasan",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOUQW70uVnLY0CKIR4VDjWqvNtRgauYTrXyxJngJ8lXhNiiYNpysWNA-o2L9vkeCZe2ks&usqp=CAU",
      "price": "TK. 400"
    },
    {
      "title": "Rosoboti",
      "author": "Shankar",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs0WHwSuYD4Z_75m07pYln5LdHH6JNfTZeVQ&s",
      "price": "TK. 320"
    },
    {
      "title": "Paddaza",
      "author": "Elma Behrouz",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2N__K55o_IUTM-KyoSm3s9QFkEZ-8oZrdeg&s",
      "price": "TK. 600"
    },
    {
      "title": "Borora Jokhon\nChoto Chilo",
      "author": "Sunil Gongo.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRygPADTdYdKjNRWSKgnnByJuR99SgtIlB0ZA&s",
      "price": "TK. 250"
    },
    {
      "title": "Shoboi Vuter\nvoy",
      "author": "Prodip Chtg.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM-e6P1TnleN_wvkCQ-1Fk5sevZrGa-3CjYw&s",
      "price": "TK. 360"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height:300 ,
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
            itemCount: bookList.length,
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
                            bookList[index]['image']!, // Use image from book list
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
                              TextSpan(text: bookList[index]['title']!), // Use title from book list
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        bookList[index]['author']!,
                        style: TextStyle(fontSize: 9, color: Colors.grey),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: RichText(
                          text: TextSpan(
                            text: bookList[index]['price']!, // Use price from book list
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
