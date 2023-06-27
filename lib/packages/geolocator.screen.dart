import 'package:packages_demo/libs.dart';

class GeolocatorScreen extends StatelessWidget {
  const GeolocatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Goelocator'),
      ),
    );
  }
}
