import 'package:flutter/foundation.dart';

/// check if the current platform is Windows
final bool isAppOnWindows = (defaultTargetPlatform == TargetPlatform.windows);

/// check if the current platform is Windows
final bool isAppOnAndroid = (defaultTargetPlatform == TargetPlatform.android);

/// check if the current platform is Windows
final bool isAppOniOs = (defaultTargetPlatform == TargetPlatform.iOS);

/// check if the current platform is Windows or Web
const bool isAppOnWeb = kIsWeb;

/// check if the current platform is Windows or Web
final bool isAppOnWebOrWindows = isAppOnWindows || isAppOnWeb;

///This variable declares that if we are on phone
///, no mouse region, else we gat a mouse region
final isPhone = isAppOnAndroid || isAppOniOs;
