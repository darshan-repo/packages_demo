import 'package:packages_demo/libs.dart';

class GoecodeScreen extends StatelessWidget {
  const GoecodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Geocode'),
      ),
    );
  }
}
