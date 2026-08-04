import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper/model/cart.dart';
import 'package:stepper/screens/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=> CartModel(),
    child: const MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: HomeScreen(),
    theme: ThemeData(fontFamily: 'BlackRegular.ttf'
    )
    ,);
  }
}
