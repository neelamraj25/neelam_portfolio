import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Future<void> launchWhatsappUrl({
    required String phoneNo,
    required String message,
  }) async {
    String url =
        // "https://api.whatsapp.com/send?phone=$phoneNo=${Uri.parse(message)}";
        "https://api.whatsapp.com/send?phone=+${917017902832}=${Uri.parse(message)}";

    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  static Future<void> urlLauncher({
    required String url,
  }) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}
