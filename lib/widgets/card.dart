import 'package:flutter/material.dart';

Widget cardWidget(String? image, String? text){
  return Column(
    children: [
      Image.asset(image!),
      Text(text!),
    ],
  );
}