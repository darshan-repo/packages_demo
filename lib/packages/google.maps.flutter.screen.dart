import 'package:packages_demo/libs.dart';

class GoogleMapsFlutterScreen extends StatelessWidget {
  const GoogleMapsFlutterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Google Maps Flutter'),
      ),
    );
  }
}
