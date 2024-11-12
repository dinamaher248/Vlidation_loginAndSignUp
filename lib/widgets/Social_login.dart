import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Widget SocialLoginButtons(String? text) {
  return Center(
    child: Column(
      children: [
        Text(
          '$text',
          style: GoogleFonts.inter(
            color: const Color(0xFF6A707C),
            fontSize: 12,
            fontWeight: FontWeight.w500, //semibold
          ),
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 1,
                    ),
                  ]),
              child: IconButton(
                icon: Icon(Icons.facebook,
                    size: 40, color: const Color(0xFF4092FF)),
                onPressed: () {},
              ),
            ),
            SizedBox(width: 30),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 1,
                    ),
                  ]),
              child: IconButton(
                icon: Image.network(
                    'http://pngimg.com/uploads/google/google_PNG19635.png',
                    width: 50,
                    height: 100),
                onPressed: () {},
              ),
            ),
            SizedBox(width: 30),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 1,
                    ),
                  ]),
              child: IconButton(
                icon:
                    Icon(FontAwesomeIcons.apple, size: 40, color: Colors.black),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
