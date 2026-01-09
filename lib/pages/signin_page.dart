import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget{
  const SigninPage({super.key});
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage>{

  final _formKey = GlobalKey<FormState>();
  final  _emailController = TextEditingController();
  final  _passwordController = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
     appBar: AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      title: Image(image: AssetImage("assets/images/logo.png"), height: 60,),
      centerTitle: true,
      actions: [
        TextButton(
          onPressed: (){},
          child: const Text("HELP",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
          ))
      ],
     ), 
     body: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 80,),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email or phone number",
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none
                ),
                labelStyle: TextStyle(
                  color: Colors.white
                ),
              ),
              style: TextStyle(
                color: Colors.white
              ),
            ),
            SizedBox(height: 40,),
             TextFormField(
              controller: _passwordController,
              obscureText: _isObscure,
              decoration: InputDecoration(
                labelText: "Password",
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none
                ),
                labelStyle: TextStyle(
                  color: Colors.white
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off, color: Colors.white,)
                ),
              ),
              style: TextStyle(
                color: Colors.white
              ),
            ),
             const SizedBox(height: 20,),
             SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                
                onPressed: (){},
                child: const Text("Sign In", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
             )
             )
          ],
        )
      ),
     ),
    );
  }
}