import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/Login_Page.dart';
import 'package:flutter_application_2/pages/sing_up_page.dart';

class LoginAndSingUp extends StatefulWidget {
  const LoginAndSingUp({super.key});

  @override
  State<LoginAndSingUp> createState() => _LoginAndSingUpState();
}

class _LoginAndSingUpState extends State<LoginAndSingUp> {
  bool isLoading = true;

  void togglePage() {
    setState(() {
    isLoading = !isLoading;
    });
  }

  @override
  Widget build(BuildContext context){
    if (isLoading) {
      return LoginPage(
        onPressed: togglePage,
      );
    } else{
      return SingUp(
        onPressed: togglePage,
      );
    }
  }
}