import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakertute/models/cart.dart';
import 'package:sneakertute/pages/cart_page.dart';
import 'package:sneakertute/pages/home_page.dart';
import 'package:sneakertute/pages/intro_page.dart';
import 'package:sneakertute/pages/profile_page.dart';
import 'package:sneakertute/provider/tab_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    return MultiProvider(
      // create: (context) => Cart(),
      providers: [
        ChangeNotifierProvider(create: (_) => TabProvider()),
        ChangeNotifierProvider(create: (_) => Cart()),
      ],
      builder: (context,child) => MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/':(context) => IntroPage(),
          '/home':(context)=> HomePage(),
          '/profile': (context)=>ProfilePage(),
          '/cart': (context)=>CartPage()
        },
      ) ,
    );
  }
}

