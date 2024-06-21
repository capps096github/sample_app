import 'dart:math' as math;

import 'package:flutter/material.dart';

/// app Color
const appColor = Color(0xFF7F00FF);

/// app secondary color
const appSecondaryColor = Color(0xFF200E32);

/// app background
const appBackground = Color(0xFFFFFFFF);

/// app white
const appWhite = Color(0xFFFFFFFF);

/// app black
const appBlack = Color(0xFF000000);

/// app transparent
const appTransparent = Colors.transparent;

/// ! ----------- error colors
/// error yellow
const errorYellow = Color(0xFFFFFF00);

/// error color
const errorColor = Color(0xFF8A0301);

/// app random color
Color get appRandomColor =>
    Color((math.Random().nextDouble() * 0xFFE3EEFE).toInt()).withOpacity(1);
