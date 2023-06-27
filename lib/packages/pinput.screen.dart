import 'package:packages_demo/libs.dart';

class PinputScreen extends StatelessWidget {
  const PinputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Pinput'),
      ),
    );
  }
}
