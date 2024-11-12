import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                Textfield_Widget(text: 'Username'),
                const SizedBox(
                  height: 20,
                ),
                Textfield_Widget(text: 'Email'),
                const SizedBox(
                  height: 20,
                ),
                Textfield_Widget(text: 'Password'),
                const SizedBox(
                  height: 20,
                ),
                Textfield_Widget(text: 'Confirm Password'),
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
