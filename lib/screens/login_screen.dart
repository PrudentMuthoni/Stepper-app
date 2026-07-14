import 'package:flutter/material.dart';
class LoginScreen  extends StatefulWidget{
  const LoginScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen>{
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  bool _hidePassword=true;
  @override
  Widget build(BuildContext context) {
      throw UnimplementedError();
  }
}