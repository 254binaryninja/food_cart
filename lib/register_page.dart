// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_cart/components/my_button.dart';
import 'package:food_cart/components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            SizedBox(
              height: 70,
            ),
            Icon(
              Icons.lock_open_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(
              height: 20,
            ),
            //message , app slogan
            Text(
              "Let's create you an account and get started",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //email field
            Text(
              "Email",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false),
            SizedBox(
              height: 20,
            ),
            Text(
              "Password",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            //password field
            MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),
            SizedBox(
              height: 20,
            ),
            Text(
              "Confirm Password",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            MyTextField(
                controller: confirmPasswordController,
                hintText: " password",
                obscureText: true),
            SizedBox(
              height: 10,
            ),
            // button
            MyButton(onTap: () {}, text: "Sign Up"),
            SizedBox(
              height: 10,
            ),
            // text for signUp
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ? ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
