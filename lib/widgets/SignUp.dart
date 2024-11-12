import 'package:flutter/material.dart';

class buildSignUp extends StatelessWidget {
  final String text;
  final String textinput;
  final String push;

  const buildSignUp({super.key, required this.text,required this.textinput, required this.push});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Text(text,
            style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                )),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '$push');
          },
          child: Text(textinput,
              style: TextStyle(
                  color: const Color(0xFF35C2C1),
                  fontSize: 15,
                  )),
        ),
      ],
    );
  }
}
