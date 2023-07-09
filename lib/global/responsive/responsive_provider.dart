import '../../sample_app_exporter.dart';

//* this provides the overall responsiveness of our app

final sampleAppResponsiveProvider =
    Provider.family<SampleAppResponsive, BuildContext>((ref, ctx) {
  return SampleAppResponsive(context: ctx);
});
