import 'package:packages_demo/libs.dart';
import 'package:url_launcher/url_launcher.dart';

class URLLauncherController extends GetxController {
  TextEditingController txtPhoneNo = TextEditingController();
  TextEditingController txtEmail = TextEditingController();

  RxString phoneNo = ''.obs;
  RxString email = ''.obs;

  RxBool isShow = false.obs;

  /// Launch `URL` from `PhoneNo`
  void get phoneNumber => _phoneNo();

  /// Launch `URL` from `Email Address`

  void get emailAddress => _emailAddress();
  _phoneNo() {
    launchUrl(Uri.parse('tel:${'+91'}${phoneNo.value}'));
  }

  _emailAddress() {
    launchUrl(Uri.parse('mailto:${email.value}'));
  }
}
