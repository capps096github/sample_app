import '../../app_exporter.dart';

/// a sample future provider used to simulate a future provider
final dummyFutureProvider = FutureProvider<void>((ref) async {
  return Future.delayed(twoSeconds, () {
    printer('FutureProvider has been called');
  });
});
