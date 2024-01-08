import 'package:flutter/material.dart';

const SizedBox sHBox= SizedBox(height: 10);
const SizedBox mHBox= SizedBox(height: 18);
const SizedBox lHBox= SizedBox(height: 25);

const SizedBox sWBox= SizedBox(width: 10);
const SizedBox mWBox= SizedBox(width: 18);
const SizedBox lWBox= SizedBox(width: 25);

Text headingtxt(String text) {
  return Text(
    text,
    style: const TextStyle(
        color: Color.fromARGB(255, 4, 113, 8), fontSize: 23, fontWeight: FontWeight.bold),
  );
}
Text primarytxt(String text, double size) {
  return Text(
    text,
    style: TextStyle(
        color: const Color.fromARGB(255, 115, 115, 115),
        fontSize: size,
        fontWeight: FontWeight.w800),
  );
}