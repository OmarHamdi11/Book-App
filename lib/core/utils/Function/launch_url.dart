import 'package:bookly/core/utils/Function/custom_snak_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      CustomSnakBar(context, 'Cannot Launch Url $url');
    }
  }
}
