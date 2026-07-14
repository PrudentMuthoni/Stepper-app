import 'package:flutter/material.dart';
class LoginScreen  extends StatefulWidget{
  const LoginScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen>{
  final _loginFormKey=GlobalKey<FormState>();
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  bool _hidePassword=true;



  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _loginFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/logo.png", width: 160, height:160),
            SizedBox(height: 16,),

            Text('Login',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
            SizedBox(height: 16),
            
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder()
              ),validator: (value) {
                if(value==null || value.isEmpty){
                  return "Enter your email";
                }
                if (!value.contains("@")){
                  return "Enter a valid Email";
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,

            ),
            SizedBox(height: 16,),

            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                suffix: IconButton(onPressed: (){setState(() {
                  _hidePassword= !_hidePassword;
                });}, 
                icon: Icon(_hidePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined)),
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder()
              ),
              validator: (value) {
                if(value ==null || value.isEmpty){
                  return 'Enter your password';
                }
                return null;
              },
              obscureText: _hidePassword,
            ),
            SizedBox(height: 16,),

            ElevatedButton(onPressed: (){
              if(_loginFormKey.currentState!.validate()){
                //perform login and navigate tp homescreen
              }
            },
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
             ),
             child: Text('Login',
             style: TextStyle(color:Colors.white),),
             ),

             SizedBox(height: 16,),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not yet registered?'),
                TextButton(onPressed: (){}, child: Text('Sign Up'))
              ],
             )
          ],
        )),
      )),
     );
  }
}