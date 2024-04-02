import 'package:fevorites_app_usingprovider/Provider/favorite_Provider.dart';
import 'package:fevorites_app_usingprovider/Screen/Home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoritreProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
