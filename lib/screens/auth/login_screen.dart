import 'package:ams/screens/auth/signup_screen.dart';
import 'package:ams/widgets/constants.dart';
import 'package:ams/widgets/input_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: isWeb ? width/4 :  width/ 1.2,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Login Screen",style: TextStyle(fontSize: 20),),
                      const SizedBox(height: 35,),
                      InputField(hintText: "Email", controller: _emailController),
                      const SizedBox(
                        height: 25,
                      ),
                      InputField(
                          hintText: "Password", controller: _passwordController),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(onPressed: (){}, child: Text("Login"))
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Dont have an account"),
                      TextButton(onPressed: (){ Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SignUpScreen()));}, child: Text("SignUp"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


