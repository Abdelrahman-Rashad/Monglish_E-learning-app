import 'package:flutter/material.dart';
import '../widgets/splach_components/custom_splash_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, 1.00),
              end: Alignment(0, -1),
              colors: [Color(0xFF001741), Color(0xFF2B4BAB), Color(0xFF001741)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1, child: Image.asset("assets/images/white-logo2.png")),
              Expanded(flex: 2, child: Image.asset("assets/images/boy.png")),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      custom_splash_button(),
                    ],
                  ))
            ],
          )),
    );
  }
}
