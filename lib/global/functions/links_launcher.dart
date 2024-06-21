import '../../app_exporter.dart';

///This Opens the links in the browser
Future<void> linkLauncher(String link) async {
  if (await canLaunchUrl(Uri.parse(link))) {
    await launchUrl(
      Uri.parse(link),
      mode: LaunchMode.externalApplication,
    );
  } else {
    printer('Could not launch $link');
  }
}
