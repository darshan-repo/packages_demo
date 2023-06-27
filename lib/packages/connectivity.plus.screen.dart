import 'package:packages_demo/libs.dart';

class ConnectivityPlusScreen extends StatelessWidget {
  const ConnectivityPlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Connectivity Plus'),
      ),
    );
  }
}
