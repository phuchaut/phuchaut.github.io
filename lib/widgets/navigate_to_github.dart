import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(String url) async {
  Uri finalURL = Uri.parse(url);
  if (await canLaunchUrl(finalURL)) {
    await launchUrl(finalURL, mode: LaunchMode.externalApplication);
  } else {
    throw 'Can\'t open URL: $finalURL';
  }
}
