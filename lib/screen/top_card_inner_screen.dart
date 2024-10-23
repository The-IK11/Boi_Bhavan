import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String title;
  final String author;
  final String image;
  final String price;
  final String description; // New field for description
  final double rating; // New field for rating

  ProductDetailScreen({
    required this.title,
    required this.author,
    required this.image,
    required this.price,
    required this.description, // Add this parameter
    required this.rating, // Add this parameter
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          // Product image
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 203,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepOrangeAccent,
                  width: 3
                ),
                borderRadius:BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                child: Image.network(
                  image,
                  height: 200,

                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          // Product details
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Author: $author',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  price,
                  style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Rating: ${rating.toStringAsFixed(1)} / 5', // Display rating
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    Padding(

                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                          Icon(Icons.star,size: 20,color: Colors.yellow,),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade200,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        description, // Display description
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          // Buttons
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle add to cart action
                    },
                    child: Text('Add to Cart'),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.deepOrangeAccent)
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle buy now action
                    },
                    child: Text('Buy Now'),
                    style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.deepOrange,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
