import 'package:url_launcher/url_launcher.dart';

launchLink(String url) async {
  Uri myUri = Uri.parse(url);
  if (await canLaunchUrl(myUri)) {
    await launchUrl(myUri);
  } else {
    throw "Could not launch $url";
  }
}