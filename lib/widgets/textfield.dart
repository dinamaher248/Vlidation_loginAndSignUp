import 'package:flutter/material.dart';
import 'package:sign_up_login/functions/validate_login.dart';

class Textfield_Widget extends StatefulWidget {
  Textfield_Widget(
      {this.text,
      required this.obscureText,
      required this.controller,
      this.onChanged,
      this.validator});
  String? text;
  final void Function(String value)? onChanged;
   bool obscureText;
  final String? Function(String? value)? validator;
  final TextEditingController controller;

  @override
  State<Textfield_Widget> createState() => _Textfield_WidgetState();
}

class _Textfield_WidgetState extends State<Textfield_Widget> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xffF7F8F9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        onChanged: widget.onChanged,
        onFieldSubmitted: (value) {
          debugPrint("Enter Done !");
        },

        //it will disapear password if it true
        obscureText: widget.obscureText ? !isPasswordVisible : false,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: widget.text,
          labelStyle: TextStyle(
            fontSize: 15,
            color: const Color(0xFF989898),
          ),
          suffixIcon: widget.obscureText
              ? IconButton(
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
        ),

        validator: widget.validator,
      ),
    );
  }
}


//validator: (value) {
        //   if (text == 'Password' ||
        //       text == 'Enter Your Password') {
        //     return FormValidator.validatePass(value);
        //   } else if (text == 'Enter Your Email' || text == 'Email') {
        //     return FormValidator.validateEmail(value);
        //   } else if (text == 'Username') {
        //     return FormValidator.validateUserName(value);
        //   } else if (text == 'Confirm Password') {
        //     return FormValidator.checkConfirming(passwordController.text, confirmPasswordController.text);
        //   }
        //   return null;
        // }