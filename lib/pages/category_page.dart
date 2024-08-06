import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          children: [
            Row(
              children:const [
                Text('My Categories',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
