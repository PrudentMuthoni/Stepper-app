import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SignupScreenState();
  }
}

class _SignupScreenState extends State<SignupScreen> {
  final _signupFormKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _hidePassword = true;
  bool _hideConfirmPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Form(
            key: _signupFormKey,
            child: Column(children: [
              TextFormField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  prefixIcon: Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder()
                ),
                validator: (value) {
                  if (value ==null || value.isEmpty){
                    return 'Enter first name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16,),

              TextFormField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  prefixIcon: Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder()
                ),
                validator: (value) {
                  if (value ==null || value.isEmpty){
                    return 'Enter last name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16,),

              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder()
                ),
                validator: (value) {
                  if (value ==null || value.isEmpty){
                    return 'Enter you email ';
                  }
                  if (!value.contains("@")){
                  return "Enter a valid Email";
                }
                return null;
                },
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
                  if (value ==null || value.isEmpty){
                    return 'Enter your password';
                  }
                  return null;
                },
                obscureText: _hidePassword,
              ),
              SizedBox(height: 16,),

              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  suffix: IconButton(onPressed: (){setState(() {
                  _hideConfirmPassword= !_hideConfirmPassword;
                });}, 
                icon: Icon(_hideConfirmPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined)),
                  labelText: 'Confirm Password',
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder()
                ),
                validator: (value) {
                  if (value ==null || value.isEmpty){
                    return 'Confirm your password';
                  }
                  return null;
                },
                obscureText: _hideConfirmPassword,
              ),
              SizedBox(height: 16,),

            ElevatedButton(onPressed: (){
              if(_signupFormKey.currentState!.validate()){
                //perform login and navigate tp homescreen
              }
            },
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
             ),
             child: Text('Sign Up',
             style: TextStyle(color:Colors.white),),
             ),

             SizedBox(height: 16,),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already registered?'),
                TextButton(onPressed: (){}, child: Text('Login'))
              ],
             )
            ])),
        ),
      ),
    );
  }
}
