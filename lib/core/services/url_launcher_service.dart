import "../../src.dart";

@lazySingleton
class UrlLauncherService {
  Future<bool> canLaunchCustomUrl(String url) async {
    final Uri uri = Uri.parse(url);
    return await canLaunchUrl(uri);
  }

  Future<bool> launchInBrowser(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      return await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    }
    return false;
  }

  Future<bool> launchInApp(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      return await launchUrl(
        uri,
        mode: LaunchMode.inAppWebView,
      );
    }
    return false;
  }

  Future<bool> launchDefault(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      return await launchUrl(uri);
    }
    return false;
  }

  Future<bool> launchCustomUri(Uri uri, {LaunchMode mode = LaunchMode.platformDefault}) async {
    if (await canLaunchUrl(uri)) {
      return await launchUrl(uri, mode: mode);
    }
    return false;
  }

  Future<bool> makePhoneCall(String phoneNumber) async {
    final Uri uri = Uri(scheme: 'tel', path: phoneNumber);
    return await launchCustomUri(uri);
  }

  Future<bool> sendSms(String phoneNumber, {String? body}) async {
    final Uri uri = Uri(
      scheme: 'sms',
      path: phoneNumber,
      queryParameters: body != null ? {'body': body} : null,
    );
    return await launchCustomUri(uri);
  }

  Future<bool> sendEmail(String email, {String? subject, String? body}) async {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {
        if (subject != null) 'subject': subject,
        if (body != null) 'body': body,
      },
    );
    return await launchCustomUri(uri);
  }
}
