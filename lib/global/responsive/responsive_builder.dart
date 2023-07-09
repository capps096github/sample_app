import '../../sample_app_exporter.dart';

class SampleAppResponsiveBuilder extends ConsumerWidget {
  const SampleAppResponsiveBuilder({
    required this.mobile,
    this.tablet,
    required this.desktop,
    super.key,
  });

  /// widget to be displayed on mobile
  final Widget mobile;

  /// widget to be displayed on tablet
  final Widget? tablet;

  /// widget to be displayed on desktop
  final Widget desktop;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // responsiveness
    final sampleAppResponsive = ref.watch(sampleAppResponsiveProvider(context));

    final isDesktop = sampleAppResponsive.isDesktopScreen;
    final isTablet = sampleAppResponsive.isTabletScreen;

    if (isDesktop) {
      return desktop;
    }
    // If width it less then 1024 and more then 600 we consider it as tablet
    else if (isTablet) {
      return tablet ?? desktop;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
