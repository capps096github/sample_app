import '../app_exporter.dart';

///This is the root of our SampleApp app
class SampleApp extends ConsumerWidget {
  /// [SampleApp] constructor
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    final appTheme = ref.watch(appThemeProvider);

    return MaterialApp.router(
      // -- Router --
      routerConfig: goRouter,

      // -- Theme --
      color: appColor,
      theme: appTheme,

      // -- Title --
      title: sampleAppTitle,
      restorationScopeId: sampleAppAppId,

      // -- Debug Mode --
      debugShowCheckedModeBanner: false,

      // -- Bouncing Scroll Behavior --
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
        scrollbars: false,
      ),
    );
  }
}
