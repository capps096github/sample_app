import '../../sample_app_exporter.dart';

///* this provides the default router delegate for the app
final goRouterProvider = Provider<GoRouter>((ref) {
  return sampleAppRouter;
});

// router delegate
final sampleAppRouter = GoRouter(
  initialLocation: initialPath,
  restorationScopeId: sampleAppAppId,
  routes: [
    //* home page
    GoRoute(
      path: homePath,
      builder: (context, state) => const SampleAppHome(),
    ),

    //* auth
    GoRoute(
      path: authPath,
      builder: (context, state) => const SampleAppAuth(),
    ),

    //* user

    // * settings
    GoRoute(
      path: settingsPath,
      builder: (context, state) => const SampleAppSettings(),
    ),
  ],

  redirect: (_, state) {
    //TODO if the user is not logged in, redirect to the auth page

    //TODO if the user is logged in, don't redirect to any page just continue with the initial path
    return null;
  },
  errorBuilder: (context, state) => SampleAppErrorScreen(error: state.error),
  // log diagnostic info for your routes
  debugLogDiagnostics: true,
);
