import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primary = Color(0xFF3498db);
const secondary = Color(0xFF2ecc71);
const darker = Color(0xFF3E4249);
const cardColor = Color.fromARGB(198, 230, 228, 228);
const mainColor = Color(0xFF000000);
const appBgColor = Color(0xFFFAFAFA);
const shadowColor = Colors.black87;
const textBoxColor = Colors.white;
const bottomBarColor = Colors.white;
const inActiveColor = Colors.grey;

const yellow = Color(0xFFffcb66);
const green = Color(0xFFb2e1b5);
const pink = Colors.pink;
const purple = Color(0xFFd9bcff);
const red = Color(0xFFff4b60);
const orange = Color(0xFFFFC8A2);
const sky = Color(0xFFABDEE6);
const blue = Color(0xFF509BE4);

text16() {
  return TextStyle(
    fontSize: 16,
    color: mainColor,
  );
}

text14Darker() {
  return TextStyle(
    fontSize: 14,
    color: darker,
  );
}

text20() {
  return TextStyle(
    fontSize: 20,
    color: cardColor,
  );
}

text30() {
  return TextStyle(
    fontSize: 30,
    color: mainColor,
  );
}

text24() {
  return TextStyle(
    fontSize: 24,
    color: red,
  );
}

text25() {
  return TextStyle(
    fontSize: 25,
    color: mainColor,
  );
}

text28() {
  return GoogleFonts.oswald(
    fontSize: 28,
    color: mainColor,
  );
}
