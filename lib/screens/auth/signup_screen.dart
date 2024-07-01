import 'package:ams/screens/auth/login_screen.dart';
import 'package:ams/widgets/constants.dart';
import 'package:ams/widgets/input_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: isWeb ? width / 4 : width / 1.2,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "SignUp Screen",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      InputField(
                          hintText: "Username",
                          controller: _usernameController),
                      const SizedBox(
                        height: 25,
                      ),
                      InputField(
                          hintText: "Email", controller: _emailController),
                      const SizedBox(
                        height: 25,
                      ),
                      InputField(
                          hintText: "Password",
                          controller: _passwordController),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("SignUp"))
                    ],
                  ),
                  Column(
                    children: [
                      Text("Already have an account?"),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: Text("Login"),
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
