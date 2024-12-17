import 'package:flutter/material.dart';
import 'package:quantum_sit/core/constants/text_styles.dart';
import '../widgets/login_components/form_component.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login-background.png",
                fit: BoxFit.fill,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60),
                    child: Text(
                      "Hi, Welcome Back!",
                      style: TextStyleConstants.styleLogin30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: form_component(
                        globalKey: globalKey,
                        emailController: emailController,
                        passwordController: passwordController),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
