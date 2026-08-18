import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper/model/cart.dart';
import 'package:stepper/screens/home_screen.dart';
import 'package:stepper/screens/login_screen.dart';
import 'package:stepper/view_model/auth_view_model.dart';

void main() {
  MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=> CartModel()),
    ChangeNotifierProvider(create: (_)=> AuthViewModel()),
  ],
  child: const MyApp(), 
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: LoginScreen(),
    theme: ThemeData(fontFamily: 'BlackRegular.ttf'
    )
    ,);
  }
}
