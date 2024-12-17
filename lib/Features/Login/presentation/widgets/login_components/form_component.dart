import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/text_styles.dart';
import '../../../data/models/login_mooglish_input.dart';
import '../../statemangment/cubit/login_cubit_cubit.dart';
import 'custom_buttom_login_bloc_consumer.dart';
import 'custom_text_form.dart';

class form_component extends StatelessWidget {
  const form_component({
    super.key,
    required this.globalKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> globalKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Text(
              "Email or username",
              style: TextStyleConstants.styleLogin14,
            ),
          ),
          CustomTextForm(
            text: "Email or username",
            myController: emailController,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Text(
              "Password",
              style: TextStyleConstants.styleLogin14,
            ),
          ),
          CustomTextForm(
            text: "Password",
            myController: passwordController,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 11),
            child: Text(
              "Forgot Password?",
              style: TextStyleConstants.styleLoginOrange14,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Align(
                alignment: Alignment.center,
                child: CustomButtomLoginConsumer(
                  onTap: () {
                    if (globalKey.currentState!.validate()) {
                      LoginMooglishInput loginMooglishInput =
                          LoginMooglishInput(
                              email: emailController.text,
                              password: passwordController.text);
                      BlocProvider.of<LoginCubitCubit>(context)
                          .makeLogin(loginMooglishInput);
                    }
                  },
                )),
          )
        ],
      ),
    );
  }
}
