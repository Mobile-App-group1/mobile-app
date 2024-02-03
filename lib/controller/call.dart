import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class CallerController extends GetxController {
  launchCaller() async {
    const url =
        "tel:093764096"; // Replace 1234567 with your desired phone number
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchFacebookURL() async {
    const url =
        'https://www.facebook.com/profile.php?id=100078278374916&mibextid=JRoKGi'; // Add your Facebook page URL here
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchTelegramURL() async {
    const url =
        'https://t.me/reanmore'; // Add your Telegram channel or group URL here
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
