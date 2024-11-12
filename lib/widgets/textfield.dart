import 'package:flutter/material.dart';
import 'package:sign_up_login/functions/validate_login.dart';

class Textfield_Widget extends StatelessWidget {
  Textfield_Widget({this.text});
  String? text;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
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
          onChanged: (value) {
            debugPrint("Value is Changed: $value");
          },
          onFieldSubmitted: (value) {
            debugPrint("Enter Done !");
          },
          onSaved: (value) {
            text = value ?? '';
          },
          //it will disapear password if it true
          obscureText: text == 'Password' ||
              text == 'Confirm Password' ||
              text == 'Enter Your Password',
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: text,
            labelStyle: TextStyle(
              fontSize: 15,
              color: const Color(0xFF989898),
            ),
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
          validator: (value) {
            if (text == 'Password' ||
                text == 'Enter Your Password') {
              return FormValidator.validatePass(value);
            } else if (text == 'Enter Your Email' || text == 'Email') {
              return FormValidator.validateEmail(value);
            } else if (text == 'Username') {
              return FormValidator.validateUserName(value);
            } else if (text == 'Confirm Password') {
              return FormValidator.checkConfirming(passwordController.text, confirmPasswordController.text);
            }
            return null;
          }),
    );
  }
}
