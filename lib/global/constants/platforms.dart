import 'package:flutter/foundation.dart';

/// check if the current platform is Windows
final bool isSampleAppWindows =
    (defaultTargetPlatform == TargetPlatform.windows);

/// check if the current platform is Windows
final bool isSampleAppAndroid =
    (defaultTargetPlatform == TargetPlatform.android);

/// check if the current platform is Windows
final bool isSampleAppiOs = (defaultTargetPlatform == TargetPlatform.iOS);

/// check if the current platform is Windows or Web
const bool isSampleAppWeb = (kIsWeb);

/// check if the current platform is Windows or Web
final bool isSampleAppWebOrWindows = (isSampleAppWindows || isSampleAppWeb);

///This variable declares that if we are on phone
///, no mouse region, else we gat a mouse region
final isPhone = (isSampleAppAndroid || isSampleAppiOs);
