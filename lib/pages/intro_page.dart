import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('assets/images/Nike.png',height: 240,),
              ),
              const SizedBox(height:48),
              //title
              const Text('Just DO It',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),

              const SizedBox(height:24),

              //sub title
              const Text('Brand new sneaker and custom kicks made with premium quality',style: TextStyle(fontSize: 16,color:Colors.grey),textAlign: TextAlign.center,),

              //shop button
              const SizedBox(height: 48,),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:const EdgeInsets.all(25.0),
                  child: const Center(child: Text('Shop Now',style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,color: Colors.white),)),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
