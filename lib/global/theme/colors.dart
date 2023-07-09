import 'package:flutter/material.dart';

import 'dart:math' as math;

// sampleApp Color
const sampleAppColor = Color(0xFF7F00FF);

// sampleApp secondary color
const sampleAppSecondaryColor = Color(0xFF200E32);

// sampleApp background
const sampleAppBackground = Color(0xFF200E32);

// sampleApp white
const sampleAppWhite = Color(0xFFFFFFFF);

// sampleApp black
const sampleAppBlack = Color(0xFF000000);

// sampleApp transparent
const sampleAppTransparent = Colors.transparent;

// sampleApp random color
Color get sampleAppRandomColor =>
    Color((math.Random().nextDouble() * 0xFFE3EEFE).toInt()).withOpacity(1.0);
