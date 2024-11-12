import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_login/functions/validate_login.dart';
import 'package:sign_up_login/widgets/Button.dart';
import 'package:sign_up_login/widgets/SignUp.dart';
import 'package:sign_up_login/widgets/Social_login.dart';
import 'package:sign_up_login/widgets/textfield.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 120),
                SizedBox(
                  width: 270,
                  child: Text(
                    'Welcome back! Glad to see you, Again!',
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600, // medium
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Textfield_Widget(
                  text: 'Enter Your Email',
                  obscureText: false,
                  controller: emailController,
                  validator: (value) {
                    return FormValidator.validateEmail(emailController.text);
                  },
                  onChanged: (value) {
                    setState(() {
                      emailController.text = value;
                      debugPrint("Value is Changed: $value");
                    });
                  },
                  
                ),
                const SizedBox(
                  height: 20,
                ),
                Textfield_Widget(
                  text: 'Enter Your Password',
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    return FormValidator.validatePass(passwordController.text);
                  },
                  onChanged: (value) {
                    setState(() {
                      passwordController.text = value;
                      debugPrint("Value is Changed: $value");
                    });
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Button(
                    buttonText: 'Login',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        // Navigator.pushNamed(context, '');
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    }),
                const SizedBox(
                  height: 40,
                ),
                SocialLoginButtons('Or Login With'),
                const SizedBox(
                  height: 50,
                ),
                buildSignUp(
                    text: 'Don’t have an account?',
                    textinput: 'Register Now',
                    push: 'Register')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
