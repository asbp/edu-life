import 'package:flutter/material.dart';

const colorPrimary = Color(0xFF005086);
const colorSmallComponent = Color(0xFFF7D6BF);
const colorSecondary = Color(0xFF318FB5);

List<BoxShadow> darkShadow = [
  BoxShadow(
    offset: Offset(0, 10),
    blurRadius: 10.0,
    spreadRadius: 0.05, 
    color: Colors.black12
  )
];

List<BoxShadow> primaryShadow = [
  BoxShadow(
    color: colorPrimary,
    offset: Offset(0, 0),
    blurRadius: 20,
  )
];
