import 'package:packages_demo/libs.dart';

class GeocodingScreen extends StatelessWidget {
  const GeocodingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Geocoding'),
      ),
    );
  }
}
