import 'package:ecommerceapp/Page/homePage.dart';
import 'package:ecommerceapp/Screens/BagScreen/promocode.dart';
import 'package:ecommerceapp/Screens/HomeScreen/fashionsale.dart';
import 'package:ecommerceapp/Screens/HomeScreen/streetCloths.dart';
import 'package:ecommerceapp/Screens/SignInSignUp/SignUpScreen.dart';

import 'package:ecommerceapp/provider/getCategoryProvider.dart';
import 'package:ecommerceapp/provider/getProductProvider.dart';
import 'package:ecommerceapp/provider/getSingleProductProvider.dart';
import 'package:ecommerceapp/provider/singleProductVariationProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => getSingleProductProvider()),
        ChangeNotifierProvider(create: (_) => singleProductVariationProvider())
      ],
      child: MyApp(),
    ),
  );
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
      home: HomePage(),
    );
  }
}
