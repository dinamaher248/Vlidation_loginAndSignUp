import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_up_login/functions/validate_login.dart';
import 'package:sign_up_login/widgets/Button.dart';
import 'package:sign_up_login/widgets/SignUp.dart';
import 'package:sign_up_login/widgets/Social_login.dart';
import 'package:sign_up_login/widgets/textfield.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
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
                    'Hello! Register to get started',
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
                  text: 'Username',
                  obscureText: false,
                  controller: usernameController,
                  validator: (value) {
                    return FormValidator.validateUserName(usernameController.text);
                  },
                  onChanged: (value) {
                    setState(() {
                  usernameController.text = value;
                });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Textfield_Widget(
                  text: 'Email',
                  obscureText: false,
                  controller: emailController,
                  validator: (value) {
                    return FormValidator.validateEmail(emailController.text);
                  },
                  onChanged: (value) {
                    setState(() {
                  emailController.text = value;
                });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Textfield_Widget(
                  text: 'Password',
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    return FormValidator.validatePass(passwordController.text);
                  },
                  onChanged: (value) {
                    setState(() {
                  passwordController.text = value;
                });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Textfield_Widget(text: 'Confirm Password',
                obscureText: true,
                controller: confirmPasswordController,
                validator: (value) {
                  return FormValidator.checkConfirming(passwordController.text, confirmPasswordController.text);
                },
                onChanged: (value) {
                  setState(() {
                  confirmPasswordController.text = value;
                });
                },
                ),
                const SizedBox(
                  height: 40,
                ),
                Button(
                    buttonText: 'Register',
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
                SocialLoginButtons('Or Register With'),
                const SizedBox(
                  height: 50,
                ),
                buildSignUp(
                    text: 'Already have an account?',
                    textinput: 'Login Now',
                    push: 'login')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
