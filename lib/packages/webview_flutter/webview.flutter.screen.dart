import 'package:packages_demo/controllers/webview.flutter.controller.dart';
import 'package:packages_demo/libs.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewFlutterScreen extends StatelessWidget {
  WebViewFlutterScreen({super.key});
  final WebViewFlutterController webViewFlutterController =
      WebViewFlutterController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Webview Flutter'),
        body: WebViewWidget(controller: webViewFlutterController.controller),
      ),
    );
  }
}
