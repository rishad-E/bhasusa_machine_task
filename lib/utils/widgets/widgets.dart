import 'package:flutter/material.dart';

Widget landingContainer({
  required String image,
  required String text,
  required bool isCenter,
  required double height,
  required double width,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
      // color: Colors.yellow,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
    ),
    child: isCenter
        ? Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
  );
}
