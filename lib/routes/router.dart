import '../../app_exporter.dart';

///* this provides the default router delegate for the app
final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: initialPath,
    restorationScopeId: sampleAppAppId,
    routes: [
      //* home page
      GoRoute(
        path: homePath,
        builder: (context, state) => const AppHome(),
      ),

      //* auth
      GoRoute(
        path: authPath,
        builder: (context, state) => const AppAuth(),
      ),

      //* user
    ],

    redirect: (_, state) {
      //TODO if the user is not logged in, redirect to the auth page

      //TODO if the user is logged in, don't redirect to any page just continue with the initial path
      return null;
    },
    onException: (context, state, _) => ErrorDisplay(
      error: state.error.toString(),
      stackTrace: StackTrace.current,
    ),
    // log diagnostic info for your routes
    debugLogDiagnostics: true,
  );
});
