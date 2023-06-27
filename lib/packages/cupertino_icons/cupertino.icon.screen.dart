import 'package:packages_demo/libs.dart';

class CupertinoIconScreen extends StatelessWidget {
  const CupertinoIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Cupertino Icons'),
        body: const Center(
          child: Icon(
            Icons.airplane_ticket,
            size: 40,
          ),
        ),
      ),
    );
  }
}
