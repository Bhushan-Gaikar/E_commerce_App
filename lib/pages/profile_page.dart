import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('My Profile',style: TextStyle(fontSize: 25,color: Colors.blue),),
          SizedBox(height: 20,),
          Center(
            child: Container(
              width: 200,
              height: 150,
                child: Image(image: AssetImage('assets/images/profile.png'),)),
          ),
          SizedBox(height: 20,),
         Row(
           children: [
             Text('Cart',style: TextStyle(fontSize: 20),),
             Icon(Icons.shopping_cart,size: 34,),
           ],
         ),
        ],
      ),
    );
  }
}
