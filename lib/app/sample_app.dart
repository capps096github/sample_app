import '../sample_app_exporter.dart';

class SampleApp extends ConsumerWidget {
  ///This is the root of our sample_app app
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    final sampleAppTheme = ref.watch(sampleAppThemeProvider);

    return MaterialApp.router(
      // -- Router --
      routerConfig: goRouter,

      // -- Theme --
      color: sampleAppColor,
      theme: sampleAppTheme,

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
