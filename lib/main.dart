import 'package:ecommerceapp/Page/homePage.dart';
import 'package:ecommerceapp/Screens/BagScreen/promocode.dart';
import 'package:ecommerceapp/Screens/HomeScreen/fashionsale.dart';
import 'package:ecommerceapp/Screens/HomeScreen/streetCloths.dart';
import 'package:ecommerceapp/Screens/SignInSignUp/SignUpScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
