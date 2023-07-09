import '../../sample_app_exporter.dart';

class SampleAppErrorScreen extends StatelessWidget {
  const SampleAppErrorScreen({
    super.key,
    required this.error,
  });

  // error object
  final Exception? error;

  @override
  Widget build(BuildContext context) {
    // TODO: beautify this error screen
    return Scaffold(
      appBar: AppBar(title: const Text("Page Not Found")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(error.toString()),
            TextButton(
              onPressed: () => context.go(homePath),
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
